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

extension Hasim {
    /// ModifyLinkAdvancedLog请求参数结构体
    public struct ModifyLinkAdvancedLogRequest: TCRequestModel {
        /// 云兔ID
        public let linkID: Int64

        /// 是否激活高级日志 0 关闭 1激活
        public let isAdLog: Int64

        public init(linkID: Int64, isAdLog: Int64) {
            self.linkID = linkID
            self.isAdLog = isAdLog
        }

        enum CodingKeys: String, CodingKey {
            case linkID = "LinkID"
            case isAdLog = "IsAdLog"
        }
    }

    /// ModifyLinkAdvancedLog返回参数结构体
    public struct ModifyLinkAdvancedLogResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 编辑云兔高级日志状态
    @inlinable @discardableResult
    public func modifyLinkAdvancedLog(_ input: ModifyLinkAdvancedLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLinkAdvancedLogResponse> {
        self.client.execute(action: "ModifyLinkAdvancedLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 编辑云兔高级日志状态
    @inlinable @discardableResult
    public func modifyLinkAdvancedLog(_ input: ModifyLinkAdvancedLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLinkAdvancedLogResponse {
        try await self.client.execute(action: "ModifyLinkAdvancedLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 编辑云兔高级日志状态
    @inlinable @discardableResult
    public func modifyLinkAdvancedLog(linkID: Int64, isAdLog: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLinkAdvancedLogResponse> {
        self.modifyLinkAdvancedLog(ModifyLinkAdvancedLogRequest(linkID: linkID, isAdLog: isAdLog), region: region, logger: logger, on: eventLoop)
    }

    /// 编辑云兔高级日志状态
    @inlinable @discardableResult
    public func modifyLinkAdvancedLog(linkID: Int64, isAdLog: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLinkAdvancedLogResponse {
        try await self.modifyLinkAdvancedLog(ModifyLinkAdvancedLogRequest(linkID: linkID, isAdLog: isAdLog), region: region, logger: logger, on: eventLoop)
    }
}
