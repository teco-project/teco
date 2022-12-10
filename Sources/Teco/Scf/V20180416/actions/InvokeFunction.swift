//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Scf {
    /// 同步Invoke调用接口
    ///
    ///  SCF同步调用函数接口
    @inlinable
    public func invokeFunction(_ input: InvokeFunctionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < InvokeFunctionResponse > {
        self.client.execute(action: "InvokeFunction", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 同步Invoke调用接口
    ///
    ///  SCF同步调用函数接口
    @inlinable
    public func invokeFunction(_ input: InvokeFunctionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InvokeFunctionResponse {
        try await self.client.execute(action: "InvokeFunction", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// InvokeFunction请求参数结构体
    public struct InvokeFunctionRequest: TCRequestModel {
        /// 函数名称
        public let functionName: String
        
        /// 触发函数的版本号或别名，默认值为$DEFAULT
        public let qualifier: String?
        
        /// 运行函数时的参数，以json格式传入，最大支持的参数长度是 6MB。该字段信息对应函数 [event 入参](https://cloud.tencent.com/document/product/583/9210#.E5.87.BD.E6.95.B0.E5.85.A5.E5.8F.82.3Ca-id.3D.22input.22.3E.3C.2Fa.3E)。
        public let event: String?
        
        /// 返回值会包含4KB的日志，可选值为None和Tail，默认值为None。当该值为Tail时，返回参数中的Log字段会包含对应的函数执行日志
        public let logType: String?
        
        /// 命名空间，不填默认为 default
        public let namespace: String?
        
        /// 函数灰度流量控制调用，以json格式传入，例如{"k":"v"}，注意kv都需要是字符串类型，最大支持的参数长度是1024字节
        public let routingKey: String?
        
        public init (functionName: String, qualifier: String?, event: String?, logType: String?, namespace: String?, routingKey: String?) {
            self.functionName = functionName
            self.qualifier = qualifier
            self.event = event
            self.logType = logType
            self.namespace = namespace
            self.routingKey = routingKey
        }
        
        enum CodingKeys: String, CodingKey {
            case functionName = "FunctionName"
            case qualifier = "Qualifier"
            case event = "Event"
            case logType = "LogType"
            case namespace = "Namespace"
            case routingKey = "RoutingKey"
        }
    }
    
    /// InvokeFunction返回参数结构体
    public struct InvokeFunctionResponse: TCResponseModel {
        /// 函数执行结果
        public let result: Result
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}