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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Scf {
    /// TerminateAsyncEvent请求参数结构体
    public struct TerminateAsyncEventRequest: TCRequestModel {
        /// 函数名称
        public let functionName: String

        /// 终止的调用请求id
        public let invokeRequestId: String

        /// 命名空间
        public let namespace: String?

        /// true，向指定请求[发送 SIGTERM 终止信号](https://cloud.tencent.com/document/product/583/63969#.E5.8F.91.E9.80.81.E7.BB.88.E6.AD.A2.E4.BF.A1.E5.8F.B7]， ，默认值为 false。
        public let graceShutdown: Bool?

        public init(functionName: String, invokeRequestId: String, namespace: String? = nil, graceShutdown: Bool? = nil) {
            self.functionName = functionName
            self.invokeRequestId = invokeRequestId
            self.namespace = namespace
            self.graceShutdown = graceShutdown
        }

        enum CodingKeys: String, CodingKey {
            case functionName = "FunctionName"
            case invokeRequestId = "InvokeRequestId"
            case namespace = "Namespace"
            case graceShutdown = "GraceShutdown"
        }
    }

    /// TerminateAsyncEvent返回参数结构体
    public struct TerminateAsyncEventResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 终止函数异步事件
    ///
    /// 终止正在运行中的函数异步事件
    @inlinable @discardableResult
    public func terminateAsyncEvent(_ input: TerminateAsyncEventRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TerminateAsyncEventResponse> {
        self.client.execute(action: "TerminateAsyncEvent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 终止函数异步事件
    ///
    /// 终止正在运行中的函数异步事件
    @inlinable @discardableResult
    public func terminateAsyncEvent(_ input: TerminateAsyncEventRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TerminateAsyncEventResponse {
        try await self.client.execute(action: "TerminateAsyncEvent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 终止函数异步事件
    ///
    /// 终止正在运行中的函数异步事件
    @inlinable @discardableResult
    public func terminateAsyncEvent(functionName: String, invokeRequestId: String, namespace: String? = nil, graceShutdown: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TerminateAsyncEventResponse> {
        self.terminateAsyncEvent(.init(functionName: functionName, invokeRequestId: invokeRequestId, namespace: namespace, graceShutdown: graceShutdown), region: region, logger: logger, on: eventLoop)
    }

    /// 终止函数异步事件
    ///
    /// 终止正在运行中的函数异步事件
    @inlinable @discardableResult
    public func terminateAsyncEvent(functionName: String, invokeRequestId: String, namespace: String? = nil, graceShutdown: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TerminateAsyncEventResponse {
        try await self.terminateAsyncEvent(.init(functionName: functionName, invokeRequestId: invokeRequestId, namespace: namespace, graceShutdown: graceShutdown), region: region, logger: logger, on: eventLoop)
    }
}
