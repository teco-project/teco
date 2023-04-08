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

extension Gme {
    /// DeleteScanUser请求参数结构体
    public struct DeleteScanUserRequest: TCRequestModel {
        /// 应用ID，登录控制台 - 服务管理创建应用得到的AppID
        public let bizId: UInt64

        /// 需要删除送检的用户号。示例：1234
        public let userId: UInt64?

        public init(bizId: UInt64, userId: UInt64? = nil) {
            self.bizId = bizId
            self.userId = userId
        }

        enum CodingKeys: String, CodingKey {
            case bizId = "BizId"
            case userId = "UserId"
        }
    }

    /// DeleteScanUser返回参数结构体
    public struct DeleteScanUserResponse: TCResponseModel {
        /// 返回结果码
        public let errorCode: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errorCode = "ErrorCode"
            case requestId = "RequestId"
        }
    }

    /// 删除自定义送检用户
    @inlinable
    public func deleteScanUser(_ input: DeleteScanUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteScanUserResponse> {
        self.client.execute(action: "DeleteScanUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除自定义送检用户
    @inlinable
    public func deleteScanUser(_ input: DeleteScanUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteScanUserResponse {
        try await self.client.execute(action: "DeleteScanUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除自定义送检用户
    @inlinable
    public func deleteScanUser(bizId: UInt64, userId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteScanUserResponse> {
        self.deleteScanUser(.init(bizId: bizId, userId: userId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除自定义送检用户
    @inlinable
    public func deleteScanUser(bizId: UInt64, userId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteScanUserResponse {
        try await self.deleteScanUser(.init(bizId: bizId, userId: userId), region: region, logger: logger, on: eventLoop)
    }
}
