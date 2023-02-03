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

extension Cdb {
    /// DescribeDBFeatures请求参数结构体
    public struct DescribeDBFeaturesRequest: TCRequestModel {
        /// 实例 ID，格式如：cdb-c1nl9rpv 或者 cdbro-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeDBFeatures返回参数结构体
    public struct DescribeDBFeaturesResponse: TCResponseModel {
        /// 是否支持数据库审计功能。
        public let isSupportAudit: Bool

        /// 开启审计是否需要升级内核版本。
        public let auditNeedUpgrade: Bool

        /// 是否支持数据库加密功能。
        public let isSupportEncryption: Bool

        /// 开启加密是否需要升级内核版本。
        public let encryptionNeedUpgrade: Bool

        /// 是否为异地只读实例。
        public let isRemoteRo: Bool

        /// 主实例所在地域。
        public let masterRegion: String

        /// 是否支持小版本升级。
        public let isSupportUpdateSubVersion: Bool

        /// 当前内核版本。
        public let currentSubVersion: String

        /// 可供升级的内核版本。
        public let targetSubVersion: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case isSupportAudit = "IsSupportAudit"
            case auditNeedUpgrade = "AuditNeedUpgrade"
            case isSupportEncryption = "IsSupportEncryption"
            case encryptionNeedUpgrade = "EncryptionNeedUpgrade"
            case isRemoteRo = "IsRemoteRo"
            case masterRegion = "MasterRegion"
            case isSupportUpdateSubVersion = "IsSupportUpdateSubVersion"
            case currentSubVersion = "CurrentSubVersion"
            case targetSubVersion = "TargetSubVersion"
            case requestId = "RequestId"
        }
    }

    /// 查询实例版本属性
    ///
    /// 本接口(DescribeDBFeatures)用于查询云数据库版本属性，包括是否支持数据库加密、数据库审计等功能。
    @inlinable
    public func describeDBFeatures(_ input: DescribeDBFeaturesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBFeaturesResponse> {
        self.client.execute(action: "DescribeDBFeatures", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例版本属性
    ///
    /// 本接口(DescribeDBFeatures)用于查询云数据库版本属性，包括是否支持数据库加密、数据库审计等功能。
    @inlinable
    public func describeDBFeatures(_ input: DescribeDBFeaturesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBFeaturesResponse {
        try await self.client.execute(action: "DescribeDBFeatures", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例版本属性
    ///
    /// 本接口(DescribeDBFeatures)用于查询云数据库版本属性，包括是否支持数据库加密、数据库审计等功能。
    @inlinable
    public func describeDBFeatures(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBFeaturesResponse> {
        let input = DescribeDBFeaturesRequest(instanceId: instanceId)
        return self.client.execute(action: "DescribeDBFeatures", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例版本属性
    ///
    /// 本接口(DescribeDBFeatures)用于查询云数据库版本属性，包括是否支持数据库加密、数据库审计等功能。
    @inlinable
    public func describeDBFeatures(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBFeaturesResponse {
        let input = DescribeDBFeaturesRequest(instanceId: instanceId)
        return try await self.client.execute(action: "DescribeDBFeatures", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
