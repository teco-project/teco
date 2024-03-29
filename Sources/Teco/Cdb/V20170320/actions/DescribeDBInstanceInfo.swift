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

extension Cdb {
    /// DescribeDBInstanceInfo请求参数结构体
    public struct DescribeDBInstanceInfoRequest: TCRequest {
        /// 实例 ID 。
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeDBInstanceInfo返回参数结构体
    public struct DescribeDBInstanceInfoResponse: TCResponse {
        /// 实例 ID 。
        public let instanceId: String

        /// 实例名称。
        public let instanceName: String

        /// 是否开通加密，YES 已开通，NO 未开通。
        public let encryption: String

        /// 加密使用的密钥 ID 。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let keyId: String?

        /// 密钥所在地域。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let keyRegion: String?

        /// 当前 CDB 后端服务使用的 KMS 服务的默认地域。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let defaultKmsRegion: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case instanceName = "InstanceName"
            case encryption = "Encryption"
            case keyId = "KeyId"
            case keyRegion = "KeyRegion"
            case defaultKmsRegion = "DefaultKmsRegion"
            case requestId = "RequestId"
        }
    }

    /// 查询实例基本信息
    ///
    /// 查询实例基本信息（实例 ID ，实例名称，是否开通加密 ）
    @inlinable
    public func describeDBInstanceInfo(_ input: DescribeDBInstanceInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBInstanceInfoResponse> {
        self.client.execute(action: "DescribeDBInstanceInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例基本信息
    ///
    /// 查询实例基本信息（实例 ID ，实例名称，是否开通加密 ）
    @inlinable
    public func describeDBInstanceInfo(_ input: DescribeDBInstanceInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBInstanceInfoResponse {
        try await self.client.execute(action: "DescribeDBInstanceInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例基本信息
    ///
    /// 查询实例基本信息（实例 ID ，实例名称，是否开通加密 ）
    @inlinable
    public func describeDBInstanceInfo(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBInstanceInfoResponse> {
        self.describeDBInstanceInfo(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例基本信息
    ///
    /// 查询实例基本信息（实例 ID ，实例名称，是否开通加密 ）
    @inlinable
    public func describeDBInstanceInfo(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBInstanceInfoResponse {
        try await self.describeDBInstanceInfo(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
