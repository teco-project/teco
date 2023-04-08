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

extension Cam {
    /// GetSecurityLastUsed请求参数结构体
    public struct GetSecurityLastUsedRequest: TCRequestModel {
        /// 查询密钥ID列表。最多支持10个。
        public let secretIdList: [String]

        public init(secretIdList: [String]) {
            self.secretIdList = secretIdList
        }

        enum CodingKeys: String, CodingKey {
            case secretIdList = "SecretIdList"
        }
    }

    /// GetSecurityLastUsed返回参数结构体
    public struct GetSecurityLastUsedResponse: TCResponseModel {
        /// 密钥ID最近访问列表
        public let secretIdLastUsedRows: [SecretIdLastUsed]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case secretIdLastUsedRows = "SecretIdLastUsedRows"
            case requestId = "RequestId"
        }
    }

    /// 获取密钥最近使用情况
    @inlinable
    public func getSecurityLastUsed(_ input: GetSecurityLastUsedRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSecurityLastUsedResponse> {
        self.client.execute(action: "GetSecurityLastUsed", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取密钥最近使用情况
    @inlinable
    public func getSecurityLastUsed(_ input: GetSecurityLastUsedRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetSecurityLastUsedResponse {
        try await self.client.execute(action: "GetSecurityLastUsed", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取密钥最近使用情况
    @inlinable
    public func getSecurityLastUsed(secretIdList: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSecurityLastUsedResponse> {
        self.getSecurityLastUsed(.init(secretIdList: secretIdList), region: region, logger: logger, on: eventLoop)
    }

    /// 获取密钥最近使用情况
    @inlinable
    public func getSecurityLastUsed(secretIdList: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetSecurityLastUsedResponse {
        try await self.getSecurityLastUsed(.init(secretIdList: secretIdList), region: region, logger: logger, on: eventLoop)
    }
}
