#include "seasocks/PageHandler.h"
#include "seasocks/PrintfLogger.h"
#include "seasocks/Server.h"
#include "seasocks/StringUtil.h"
#include "seasocks/SimpleResponse.h"
#include "seasocks/WebSocket.h"

#include <cstring>
#include <iostream>
#include <memory>
#include <set>
#include <sstream>
#include <string>
#include <thread>
#include <unistd.h>
#include <chrono>
#include <mutex>

#include <cmath>
#include <random>
#include <chrono>
#include <mutex>

using namespace seasocks;


size_t streamlen(std::shared_ptr<std::istream> stream)
{
    stream->seekg(0, stream->end);
    size_t len = stream->tellg();
    stream->seekg(0, stream->beg);
    return len;
}

class AsyncDataResponse : public Response
{
public:
    Server& m_server;
    explicit AsyncDataResponse(Server& server)
        : m_server(server)
    {
    }

    virtual void handle(std::shared_ptr<ResponseWriter> writer)
    {
       // writer->begin()
    }
    
    virtual void cancel(){}
};

class CommandHandler : public WebSocket::Handler
{
public:
        
    explicit CommandHandler(Server& s)
        : m_server(s), m_mutex()
    {
    }

    virtual void onConnect(WebSocket* socket)
    {
        auto& server = m_server;
        m_connections.insert(socket);
        const char* msg = "Thanks for connecting to the Command service";        
        std::cout << msg << std::endl;        
        m_continueServing = true;
        std::thread th([this, &server, socket]() mutable {
            int steps = 320;
            float phaseIncrement = (M_PI * 2.0f) / (float)steps;
            float value = 0.f;
            int sample = 0;
            int samplesPerSecond = 100;
            while(1) {
                usleep(1000000 / samplesPerSecond);
                if(sample >= steps)
                    sample = 0;
                value = sin(sample * phaseIncrement);
                sample++;
                std::stringstream json;
                
                std::chrono::milliseconds ms = std::chrono::duration_cast<std::chrono::milliseconds>(std::chrono::system_clock::now().time_since_epoch());
                json << "{\"time\": " << ms.count() << ", \"value\": " << value << "}";
                std::string result = json.str();
                std::cout << result.c_str() << std::endl;
                std::unique_lock<std::mutex> lock(m_mutex);
                if(this->m_continueServing) {
                    server.execute([result, socket]() { socket->send(result.c_str()); });
                } else{
                    lock.unlock();
                    break;
                }
                lock.unlock();
            }
        });
        th.detach();
    }

    virtual void onData(WebSocket* socket, const char* data)
    {
        std::cout << "Received a message: " << data << std::endl;
    }

    virtual void onDisconnect(WebSocket* socket)
    {
        std::cout << "WebSocket disconnected." << std::endl;
        std::unique_lock<std::mutex> lock(m_mutex);
        m_continueServing = false;
        socket->close();
        m_connections.erase(socket);
        lock.unlock();
    }

private:
    std::set<WebSocket*> m_connections;
    bool m_continueServing;
    Server& m_server;
    std::mutex m_mutex;
};

class OtherHandler : public WebSocket::Handler
{
public:
        
    explicit OtherHandler(Server& s)
        : m_server(s), m_mutex()
    {
    }

    virtual void onConnect(WebSocket* socket)
    {
        auto& server = m_server;
        m_connections.insert(socket);
        const char* msg = "Thanks for connecting to the Other service";        
        std::cout << msg << std::endl;        
        m_continueServing = true;        
        std::thread th([this, &server, socket]() mutable {            
            while(1) {
                int samplesPerSecond = 100;
                usleep(1000000 / samplesPerSecond);
                float value = ((float) rand() / (RAND_MAX)) + 1;
                std::stringstream json;
                
                std::chrono::milliseconds ms = std::chrono::duration_cast<std::chrono::milliseconds>(std::chrono::system_clock::now().time_since_epoch());
                json << "{\"time\": " << ms.count() << ", \"value\": " << value << "}";
                std::string result = json.str();
                std::cout << result.c_str() << std::endl;
                std::unique_lock<std::mutex> lock(m_mutex);
                if(this->m_continueServing) {
                    server.execute([result, socket]() { socket->send(result.c_str()); });
                } else{
                    lock.unlock();
                    break;
                }
                lock.unlock();
            }
        });
        th.detach();
    }

    virtual void onData(WebSocket* socket, const char* data)
    {
        std::cout << "Received a message: " << data << std::endl;
    }

    virtual void onDisconnect(WebSocket* socket)
    {
        std::cout << "WebSocket disconnected." << std::endl;
        std::unique_lock<std::mutex> lock(m_mutex);
        m_continueServing = false;
        socket->close();
        m_connections.erase(socket);
        lock.unlock();
    }

private:
    std::set<WebSocket*> m_connections;
    bool m_continueServing;
    Server& m_server;
    std::mutex m_mutex;
};

int main(int /*argc*/, const char* /*argv*/ [])
{
    std::shared_ptr<Logger> logger(new PrintfLogger(Logger::Level::DEBUG));

    Server server(logger);
    server.setPerMessageDeflateEnabled(true);
    server.addWebSocketHandler("/command", std::make_shared<CommandHandler>(server));
    server.addWebSocketHandler("/other", std::make_shared<OtherHandler>(server));
    server.serve("", 9090);

    return 0;
}