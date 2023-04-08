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

extension Ssm {
    /// GetServiceStatus请求参数结构体
    public struct GetServiceStatusRequest: TCRequestModel {
        public init() {
        }
    }

    /// GetServiceStatus返回参数结构体
    public struct GetServiceStatusResponse: TCResponseModel {
        /// true表示服务已开通，false 表示服务尚未开通。
        public let serviceEnabled: Bool

        /// 服务不可用类型： 0-未购买，1-正常， 2-欠费停服， 3-资源释放。
        public let invalidType: Int64

        /// true表示用户已经可以使用密钥安全托管功能，
        /// false表示用户暂时不能使用密钥安全托管功能。
        public let accessKeyEscrowEnabled: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case serviceEnabled = "ServiceEnabled"
            case invalidType = "InvalidType"
            case accessKeyEscrowEnabled = "AccessKeyEscrowEnabled"
            case requestId = "RequestId"
        }
    }

    /// 获取用户服务开通状态
    ///
    /// 该接口用户获取用户SecretsManager服务开通状态。
    @inlinable
    public func getServiceStatus(_ input: GetServiceStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetServiceStatusResponse> {
        self.client.execute(action: "GetServiceStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取用户服务开通状态
    ///
    /// 该接口用户获取用户SecretsManager服务开通状态。
    @inlinable
    public func getServiceStatus(_ input: GetServiceStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetServiceStatusResponse {
        try await self.client.execute(action: "GetServiceStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取用户服务开通状态
    ///
    /// 该接口用户获取用户SecretsManager服务开通状态。
    @inlinable
    public func getServiceStatus(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetServiceStatusResponse> {
        self.getServiceStatus(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取用户服务开通状态
    ///
    /// 该接口用户获取用户SecretsManager服务开通状态。
    @inlinable
    public func getServiceStatus(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetServiceStatusResponse {
        try await self.getServiceStatus(.init(), region: region, logger: logger, on: eventLoop)
    }
}
