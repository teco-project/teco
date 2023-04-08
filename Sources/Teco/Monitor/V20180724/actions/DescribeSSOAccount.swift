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

extension Monitor {
    /// DescribeSSOAccount请求参数结构体
    public struct DescribeSSOAccountRequest: TCRequestModel {
        /// Grafana 实例 ID，例如：grafana-abcdefgh
        public let instanceId: String

        /// 填写对应的账号 ID，将会按账号 ID 进行过滤，例如：10000
        public let userId: String?

        public init(instanceId: String, userId: String? = nil) {
            self.instanceId = instanceId
            self.userId = userId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case userId = "UserId"
        }
    }

    /// DescribeSSOAccount返回参数结构体
    public struct DescribeSSOAccountResponse: TCResponseModel {
        /// 授权账号列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let accountSet: [GrafanaAccountInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case accountSet = "AccountSet"
            case requestId = "RequestId"
        }
    }

    /// 列出授权账号
    ///
    /// 列出当前grafana实例的所有授权账号
    @inlinable
    public func describeSSOAccount(_ input: DescribeSSOAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSSOAccountResponse> {
        self.client.execute(action: "DescribeSSOAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 列出授权账号
    ///
    /// 列出当前grafana实例的所有授权账号
    @inlinable
    public func describeSSOAccount(_ input: DescribeSSOAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSSOAccountResponse {
        try await self.client.execute(action: "DescribeSSOAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 列出授权账号
    ///
    /// 列出当前grafana实例的所有授权账号
    @inlinable
    public func describeSSOAccount(instanceId: String, userId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSSOAccountResponse> {
        self.describeSSOAccount(.init(instanceId: instanceId, userId: userId), region: region, logger: logger, on: eventLoop)
    }

    /// 列出授权账号
    ///
    /// 列出当前grafana实例的所有授权账号
    @inlinable
    public func describeSSOAccount(instanceId: String, userId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSSOAccountResponse {
        try await self.describeSSOAccount(.init(instanceId: instanceId, userId: userId), region: region, logger: logger, on: eventLoop)
    }
}
