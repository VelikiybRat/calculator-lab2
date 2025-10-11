CXX = g++
CXXFLAGS = -Wall -Wextra -std=c++11

TARGET = my_app
LIB_STATIC = libcalculator.a
LIB_OBJS = calculator.o
EXEC_OBJS = main.o

all: $(TARGET)

$(TARGET): $(LIB_STATIC) $(EXEC_OBJS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(EXEC_OBJS) -L. -lcalculator

$(LIB_STATIC): $(LIB_OBJS)
	ar rcs $(LIB_STATIC) $(LIB_OBJS)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(TARGET) $(LIB_STATIC) $(LIB_OBJS) $(EXEC_OBJS)

.PHONY: all clean
