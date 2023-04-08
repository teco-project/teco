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

import TecoCore

extension Hasim {
    /// ModifyLinkTele请求参数结构体
    public struct ModifyLinkTeleRequest: TCRequestModel {
        /// 云兔ID
        public let linkID: Int64

        /// 运营商 1 移动 2 联通 3 电信
        public let teleOperator: Int64

        public init(linkID: Int64, teleOperator: Int64) {
            self.linkID = linkID
            self.teleOperator = teleOperator
        }

        enum CodingKeys: String, CodingKey {
            case linkID = "LinkID"
            case teleOperator = "TeleOperator"
        }
    }

    /// ModifyLinkTele返回参数结构体
    public struct ModifyLinkTeleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改云兔运营商
    @inlinable @discardableResult
    public func modifyLinkTele(_ input: ModifyLinkTeleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLinkTeleResponse> {
        self.client.execute(action: "ModifyLinkTele", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改云兔运营商
    @inlinable @discardableResult
    public func modifyLinkTele(_ input: ModifyLinkTeleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLinkTeleResponse {
        try await self.client.execute(action: "ModifyLinkTele", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改云兔运营商
    @inlinable @discardableResult
    public func modifyLinkTele(linkID: Int64, teleOperator: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLinkTeleResponse> {
        self.modifyLinkTele(.init(linkID: linkID, teleOperator: teleOperator), region: region, logger: logger, on: eventLoop)
    }

    /// 修改云兔运营商
    @inlinable @discardableResult
    public func modifyLinkTele(linkID: Int64, teleOperator: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLinkTeleResponse {
        try await self.modifyLinkTele(.init(linkID: linkID, teleOperator: teleOperator), region: region, logger: logger, on: eventLoop)
    }
}
