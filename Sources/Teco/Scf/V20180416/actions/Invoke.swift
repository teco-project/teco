//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import Logging
import NIOCore
import TecoCore

extension Scf {
    /// Invoke请求参数结构体
    public struct InvokeRequest: TCRequest {
        /// 函数名称
        public let functionName: String

        /// 同步调用请使用[同步 Invoke 调用接口](https://cloud.tencent.com/document/product/583/58400) 或填写同步调用参数 RequestResponse ，建议使用同步调用接口以获取最佳性能；异步调用填写 Event；默认为同步。接口超时时间为 300s，更长超时时间请使用异步调用。
        public let invocationType: String?

        /// 触发函数的版本号或别名，默认值为 $LATEST
        public let qualifier: String?

        /// 运行函数时的参数，以json格式传入，同步调用最大支持 6MB，异步调用最大支持 128 KB。该字段信息对应函数 [event 入参](https://cloud.tencent.com/document/product/583/9210#.E5.87.BD.E6.95.B0.E5.85.A5.E5.8F.82.3Ca-id.3D.22input.22.3E.3C.2Fa.3E)。
        public let clientContext: String?

        /// 异步调用该字段返回为空。
        public let logType: String?

        /// 命名空间
        public let namespace: String?

        /// 函数灰度流量控制调用，以json格式传入，例如{"k":"v"}，注意kv都需要是字符串类型，最大支持的参数长度是1024字节
        public let routingKey: String?

        public init(functionName: String, invocationType: String? = nil, qualifier: String? = nil, clientContext: String? = nil, logType: String? = nil, namespace: String? = nil, routingKey: String? = nil) {
            self.functionName = functionName
            self.invocationType = invocationType
            self.qualifier = qualifier
            self.clientContext = clientContext
            self.logType = logType
            self.namespace = namespace
            self.routingKey = routingKey
        }

        enum CodingKeys: String, CodingKey {
            case functionName = "FunctionName"
            case invocationType = "InvocationType"
            case qualifier = "Qualifier"
            case clientContext = "ClientContext"
            case logType = "LogType"
            case namespace = "Namespace"
            case routingKey = "RoutingKey"
        }
    }

    /// Invoke返回参数结构体
    public struct InvokeResponse: TCResponse {
        /// 函数执行结果
        public let result: Result

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 运行函数
    ///
    /// 该接口用于运行函数。
    @inlinable
    public func invoke(_ input: InvokeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InvokeResponse> {
        self.client.execute(action: "Invoke", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 运行函数
    ///
    /// 该接口用于运行函数。
    @inlinable
    public func invoke(_ input: InvokeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InvokeResponse {
        try await self.client.execute(action: "Invoke", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 运行函数
    ///
    /// 该接口用于运行函数。
    @inlinable
    public func invoke(functionName: String, invocationType: String? = nil, qualifier: String? = nil, clientContext: String? = nil, logType: String? = nil, namespace: String? = nil, routingKey: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InvokeResponse> {
        self.invoke(.init(functionName: functionName, invocationType: invocationType, qualifier: qualifier, clientContext: clientContext, logType: logType, namespace: namespace, routingKey: routingKey), region: region, logger: logger, on: eventLoop)
    }

    /// 运行函数
    ///
    /// 该接口用于运行函数。
    @inlinable
    public func invoke(functionName: String, invocationType: String? = nil, qualifier: String? = nil, clientContext: String? = nil, logType: String? = nil, namespace: String? = nil, routingKey: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InvokeResponse {
        try await self.invoke(.init(functionName: functionName, invocationType: invocationType, qualifier: qualifier, clientContext: clientContext, logType: logType, namespace: namespace, routingKey: routingKey), region: region, logger: logger, on: eventLoop)
    }
}
