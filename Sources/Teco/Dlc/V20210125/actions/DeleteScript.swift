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

extension Dlc {
    /// DeleteScript请求参数结构体
    public struct DeleteScriptRequest: TCRequestModel {
        /// 脚本id，其可以通过DescribeScripts接口提取
        public let scriptIds: [String]

        public init(scriptIds: [String]) {
            self.scriptIds = scriptIds
        }

        enum CodingKeys: String, CodingKey {
            case scriptIds = "ScriptIds"
        }
    }

    /// DeleteScript返回参数结构体
    public struct DeleteScriptResponse: TCResponseModel {
        /// 删除的脚本数量
        public let scriptsAffected: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case scriptsAffected = "ScriptsAffected"
            case requestId = "RequestId"
        }
    }

    /// 删除sql脚本
    ///
    /// 该接口（DeleteScript）用于删除sql脚本。
    @inlinable
    public func deleteScript(_ input: DeleteScriptRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteScriptResponse> {
        self.client.execute(action: "DeleteScript", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除sql脚本
    ///
    /// 该接口（DeleteScript）用于删除sql脚本。
    @inlinable
    public func deleteScript(_ input: DeleteScriptRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteScriptResponse {
        try await self.client.execute(action: "DeleteScript", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除sql脚本
    ///
    /// 该接口（DeleteScript）用于删除sql脚本。
    @inlinable
    public func deleteScript(scriptIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteScriptResponse> {
        self.deleteScript(DeleteScriptRequest(scriptIds: scriptIds), region: region, logger: logger, on: eventLoop)
    }

    /// 删除sql脚本
    ///
    /// 该接口（DeleteScript）用于删除sql脚本。
    @inlinable
    public func deleteScript(scriptIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteScriptResponse {
        try await self.deleteScript(DeleteScriptRequest(scriptIds: scriptIds), region: region, logger: logger, on: eventLoop)
    }
}
