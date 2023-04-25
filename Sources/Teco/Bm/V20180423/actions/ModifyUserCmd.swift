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

extension Bm {
    /// ModifyUserCmd请求参数结构体
    public struct ModifyUserCmdRequest: TCRequestModel {
        /// 待修改的脚本ID
        public let cmdId: String

        /// 待修改的脚本名称
        public let alias: String?

        /// 脚本适用的操作系统类型
        public let osType: String?

        /// 待修改的脚本内容，必须经过base64编码
        public let content: String?

        public init(cmdId: String, alias: String? = nil, osType: String? = nil, content: String? = nil) {
            self.cmdId = cmdId
            self.alias = alias
            self.osType = osType
            self.content = content
        }

        enum CodingKeys: String, CodingKey {
            case cmdId = "CmdId"
            case alias = "Alias"
            case osType = "OsType"
            case content = "Content"
        }
    }

    /// ModifyUserCmd返回参数结构体
    public struct ModifyUserCmdResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改自定义脚本
    @inlinable @discardableResult
    public func modifyUserCmd(_ input: ModifyUserCmdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyUserCmdResponse> {
        self.client.execute(action: "ModifyUserCmd", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改自定义脚本
    @inlinable @discardableResult
    public func modifyUserCmd(_ input: ModifyUserCmdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyUserCmdResponse {
        try await self.client.execute(action: "ModifyUserCmd", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改自定义脚本
    @inlinable @discardableResult
    public func modifyUserCmd(cmdId: String, alias: String? = nil, osType: String? = nil, content: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyUserCmdResponse> {
        self.modifyUserCmd(.init(cmdId: cmdId, alias: alias, osType: osType, content: content), region: region, logger: logger, on: eventLoop)
    }

    /// 修改自定义脚本
    @inlinable @discardableResult
    public func modifyUserCmd(cmdId: String, alias: String? = nil, osType: String? = nil, content: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyUserCmdResponse {
        try await self.modifyUserCmd(.init(cmdId: cmdId, alias: alias, osType: osType, content: content), region: region, logger: logger, on: eventLoop)
    }
}
