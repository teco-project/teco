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
    /// ModifyLinkTactic请求参数结构体
    public struct ModifyLinkTacticRequest: TCRequestModel {
        /// 云兔ID
        public let linkID: Int64

        /// 策略ID
        public let tacticID: Int64

        public init(linkID: Int64, tacticID: Int64) {
            self.linkID = linkID
            self.tacticID = tacticID
        }

        enum CodingKeys: String, CodingKey {
            case linkID = "LinkID"
            case tacticID = "TacticID"
        }
    }

    /// ModifyLinkTactic返回参数结构体
    public struct ModifyLinkTacticResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 编辑云兔策略
    @inlinable @discardableResult
    public func modifyLinkTactic(_ input: ModifyLinkTacticRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLinkTacticResponse> {
        self.client.execute(action: "ModifyLinkTactic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 编辑云兔策略
    @inlinable @discardableResult
    public func modifyLinkTactic(_ input: ModifyLinkTacticRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLinkTacticResponse {
        try await self.client.execute(action: "ModifyLinkTactic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 编辑云兔策略
    @inlinable @discardableResult
    public func modifyLinkTactic(linkID: Int64, tacticID: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLinkTacticResponse> {
        self.modifyLinkTactic(.init(linkID: linkID, tacticID: tacticID), region: region, logger: logger, on: eventLoop)
    }

    /// 编辑云兔策略
    @inlinable @discardableResult
    public func modifyLinkTactic(linkID: Int64, tacticID: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLinkTacticResponse {
        try await self.modifyLinkTactic(.init(linkID: linkID, tacticID: tacticID), region: region, logger: logger, on: eventLoop)
    }
}
