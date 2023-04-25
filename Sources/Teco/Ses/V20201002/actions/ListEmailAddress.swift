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

extension Ses {
    /// ListEmailAddress请求参数结构体
    public struct ListEmailAddressRequest: TCRequestModel {
        public init() {
        }
    }

    /// ListEmailAddress返回参数结构体
    public struct ListEmailAddressResponse: TCResponseModel {
        /// 发信地址列表详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let emailSenders: [EmailSender]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case emailSenders = "EmailSenders"
            case requestId = "RequestId"
        }
    }

    /// 获取发信地址列表
    @inlinable
    public func listEmailAddress(_ input: ListEmailAddressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListEmailAddressResponse> {
        self.client.execute(action: "ListEmailAddress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取发信地址列表
    @inlinable
    public func listEmailAddress(_ input: ListEmailAddressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListEmailAddressResponse {
        try await self.client.execute(action: "ListEmailAddress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取发信地址列表
    @inlinable
    public func listEmailAddress(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListEmailAddressResponse> {
        self.listEmailAddress(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取发信地址列表
    @inlinable
    public func listEmailAddress(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListEmailAddressResponse {
        try await self.listEmailAddress(.init(), region: region, logger: logger, on: eventLoop)
    }
}
