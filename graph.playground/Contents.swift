//: Graph - basic graph structure written in Swift

import UIKit

//a basic vertex data structure

struct Vertex {
    var key: String?
    var neighbors: Array<Edge>
    
    init() {
        self.neighbors = Array<Edge>()
    }
}



//a basic edge data structure
// edge is a connection between one or more vertexes

struct Edge {
    
    var neighbor: Vertex // array that represents connections a vertex may have with other vertices.
    
    init() {
        self.neighbor = Vertex()
    }
    
}


//a default directed graph

public class Graph {
    
    //create a new vertex
    func addVertex(key: String) -> Vertex {
        
        //set the key
        var childVertex: Vertex = Vertex()
        childVertex.key = key
        
        return childVertex
    }
    
    //add an edge to source vertex
    
    func addEdge(Source: Vertex, Neighbor: Vertex) {
        
        var source = Source
        let neighbor = Neighbor
        
        //create a new edge
        var newEdge = Edge()
        
        //default properties
        newEdge.neighbor = neighbor
        source.neighbors.append(newEdge)

    }
    
}

//test the algorithm
var graph = Graph()

var v1 = graph.addVertex(key: "A")
var v2 = graph.addVertex(key: "B")
graph.addEdge(Source: v1, Neighbor: v2)

v1 = v2

v1.key
v1.key = "W"
v1.key
v2.key


