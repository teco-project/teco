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
    /// DescribeDBInstanceConfig请求参数结构体
    public struct DescribeDBInstanceConfigRequest: TCRequestModel {
        /// 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeDBInstanceConfig返回参数结构体
    public struct DescribeDBInstanceConfigResponse: TCResponseModel {
        /// 主实例数据保护方式，可能的返回值：0 - 异步复制方式，1 - 半同步复制方式，2 - 强同步复制方式。
        public let protectMode: Int64

        /// 主实例部署方式，可能的返回值：0 - 单可用部署，1 - 多可用区部署。
        public let deployMode: Int64

        /// 实例可用区信息，格式如 "ap-shanghai-1"。
        public let zone: String

        /// 备库的配置信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let slaveConfig: SlaveConfig?

        /// 强同步实例第二备库的配置信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let backupConfig: BackupConfig?

        /// 是否切换备库。
        public let switched: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case protectMode = "ProtectMode"
            case deployMode = "DeployMode"
            case zone = "Zone"
            case slaveConfig = "SlaveConfig"
            case backupConfig = "BackupConfig"
            case switched = "Switched"
            case requestId = "RequestId"
        }
    }

    /// 查询云数据库实例的配置信息
    ///
    /// 本接口(DescribeDBInstanceConfig)用于云数据库实例的配置信息，包括同步模式，部署模式等。
    @inlinable
    public func describeDBInstanceConfig(_ input: DescribeDBInstanceConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBInstanceConfigResponse> {
        self.client.execute(action: "DescribeDBInstanceConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询云数据库实例的配置信息
    ///
    /// 本接口(DescribeDBInstanceConfig)用于云数据库实例的配置信息，包括同步模式，部署模式等。
    @inlinable
    public func describeDBInstanceConfig(_ input: DescribeDBInstanceConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBInstanceConfigResponse {
        try await self.client.execute(action: "DescribeDBInstanceConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询云数据库实例的配置信息
    ///
    /// 本接口(DescribeDBInstanceConfig)用于云数据库实例的配置信息，包括同步模式，部署模式等。
    @inlinable
    public func describeDBInstanceConfig(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBInstanceConfigResponse> {
        self.describeDBInstanceConfig(DescribeDBInstanceConfigRequest(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询云数据库实例的配置信息
    ///
    /// 本接口(DescribeDBInstanceConfig)用于云数据库实例的配置信息，包括同步模式，部署模式等。
    @inlinable
    public func describeDBInstanceConfig(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBInstanceConfigResponse {
        try await self.describeDBInstanceConfig(DescribeDBInstanceConfigRequest(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
