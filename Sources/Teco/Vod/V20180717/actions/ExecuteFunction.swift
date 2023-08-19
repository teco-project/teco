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

extension Vod {
    /// ExecuteFunction请求参数结构体
    public struct ExecuteFunctionRequest: TCRequest {
        /// 调用后端接口名称。
        public let functionName: String

        /// 接口参数，具体参数格式调用时与后端协调。
        public let functionArg: String

        /// **点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。**
        public let subAppId: UInt64?

        /// 来源上下文，用于透传用户请求信息，任务流状态变更回调将返回该字段值，最长 1000 个字符。
        public let sessionContext: String?

        /// 用于去重的识别码，如果七天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        public let sessionId: String?

        /// 保留字段，特殊用途时使用。
        public let extInfo: String?

        public init(functionName: String, functionArg: String, subAppId: UInt64? = nil, sessionContext: String? = nil, sessionId: String? = nil, extInfo: String? = nil) {
            self.functionName = functionName
            self.functionArg = functionArg
            self.subAppId = subAppId
            self.sessionContext = sessionContext
            self.sessionId = sessionId
            self.extInfo = extInfo
        }

        enum CodingKeys: String, CodingKey {
            case functionName = "FunctionName"
            case functionArg = "FunctionArg"
            case subAppId = "SubAppId"
            case sessionContext = "SessionContext"
            case sessionId = "SessionId"
            case extInfo = "ExtInfo"
        }
    }

    /// ExecuteFunction返回参数结构体
    public struct ExecuteFunctionResponse: TCResponse {
        /// 处理结果打包后的字符串，具体与后台一同协调。
        public let result: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 执行定制 API
    ///
    /// 本接口仅用于定制开发的特殊场景，除非云点播客服人员主动告知您需要使用本接口，其它情况请勿调用。
    @inlinable
    public func executeFunction(_ input: ExecuteFunctionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExecuteFunctionResponse> {
        self.client.execute(action: "ExecuteFunction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 执行定制 API
    ///
    /// 本接口仅用于定制开发的特殊场景，除非云点播客服人员主动告知您需要使用本接口，其它情况请勿调用。
    @inlinable
    public func executeFunction(_ input: ExecuteFunctionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExecuteFunctionResponse {
        try await self.client.execute(action: "ExecuteFunction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 执行定制 API
    ///
    /// 本接口仅用于定制开发的特殊场景，除非云点播客服人员主动告知您需要使用本接口，其它情况请勿调用。
    @inlinable
    public func executeFunction(functionName: String, functionArg: String, subAppId: UInt64? = nil, sessionContext: String? = nil, sessionId: String? = nil, extInfo: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExecuteFunctionResponse> {
        self.executeFunction(.init(functionName: functionName, functionArg: functionArg, subAppId: subAppId, sessionContext: sessionContext, sessionId: sessionId, extInfo: extInfo), region: region, logger: logger, on: eventLoop)
    }

    /// 执行定制 API
    ///
    /// 本接口仅用于定制开发的特殊场景，除非云点播客服人员主动告知您需要使用本接口，其它情况请勿调用。
    @inlinable
    public func executeFunction(functionName: String, functionArg: String, subAppId: UInt64? = nil, sessionContext: String? = nil, sessionId: String? = nil, extInfo: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExecuteFunctionResponse {
        try await self.executeFunction(.init(functionName: functionName, functionArg: functionArg, subAppId: subAppId, sessionContext: sessionContext, sessionId: sessionId, extInfo: extInfo), region: region, logger: logger, on: eventLoop)
    }
}
