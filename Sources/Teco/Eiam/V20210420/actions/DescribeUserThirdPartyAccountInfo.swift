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

extension Eiam {
    /// DescribeUserThirdPartyAccountInfo请求参数结构体
    public struct DescribeUserThirdPartyAccountInfoRequest: TCRequestModel {
        /// 用户名。 Username 和 UserId 需至少一个不为空；都不为空时优先使用 Username。
        public let userName: String?

        /// 用户 ID。 Username 和 UserId 需至少一个不为空；都不为空时优先使用 Username。
        public let userId: String?

        public init(userName: String? = nil, userId: String? = nil) {
            self.userName = userName
            self.userId = userId
        }

        enum CodingKeys: String, CodingKey {
            case userName = "UserName"
            case userId = "UserId"
        }
    }

    /// DescribeUserThirdPartyAccountInfo返回参数结构体
    public struct DescribeUserThirdPartyAccountInfoResponse: TCResponseModel {
        /// 用户 id。
        public let userId: String

        /// 用户名。
        public let userName: String

        /// 三方账号的绑定情况。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let thirdPartyAccounts: [ThirdPartyAccountInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
            case userName = "UserName"
            case thirdPartyAccounts = "ThirdPartyAccounts"
            case requestId = "RequestId"
        }
    }

    /// 获取用户的第三方账号绑定信息
    ///
    /// 通过用户名或用户 id 获取用户的第三方账号绑定信息。
    @inlinable
    public func describeUserThirdPartyAccountInfo(_ input: DescribeUserThirdPartyAccountInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserThirdPartyAccountInfoResponse> {
        self.client.execute(action: "DescribeUserThirdPartyAccountInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取用户的第三方账号绑定信息
    ///
    /// 通过用户名或用户 id 获取用户的第三方账号绑定信息。
    @inlinable
    public func describeUserThirdPartyAccountInfo(_ input: DescribeUserThirdPartyAccountInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserThirdPartyAccountInfoResponse {
        try await self.client.execute(action: "DescribeUserThirdPartyAccountInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取用户的第三方账号绑定信息
    ///
    /// 通过用户名或用户 id 获取用户的第三方账号绑定信息。
    @inlinable
    public func describeUserThirdPartyAccountInfo(userName: String? = nil, userId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserThirdPartyAccountInfoResponse> {
        self.describeUserThirdPartyAccountInfo(.init(userName: userName, userId: userId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取用户的第三方账号绑定信息
    ///
    /// 通过用户名或用户 id 获取用户的第三方账号绑定信息。
    @inlinable
    public func describeUserThirdPartyAccountInfo(userName: String? = nil, userId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserThirdPartyAccountInfoResponse {
        try await self.describeUserThirdPartyAccountInfo(.init(userName: userName, userId: userId), region: region, logger: logger, on: eventLoop)
    }
}
