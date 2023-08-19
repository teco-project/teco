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

extension Tse {
    /// DescribeSREInstanceAccessAddress请求参数结构体
    public struct DescribeSREInstanceAccessAddressRequest: TCRequest {
        /// 注册引擎实例Id
        public let instanceId: String?

        /// VPC ID
        public let vpcId: String?

        /// 子网ID
        public let subnetId: String?

        /// 引擎其他组件名称（pushgateway、polaris-limiter）
        public let workload: String?

        /// 部署地域
        public let engineRegion: String?

        public init(instanceId: String? = nil, vpcId: String? = nil, subnetId: String? = nil, workload: String? = nil, engineRegion: String? = nil) {
            self.instanceId = instanceId
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.workload = workload
            self.engineRegion = engineRegion
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case workload = "Workload"
            case engineRegion = "EngineRegion"
        }
    }

    /// DescribeSREInstanceAccessAddress返回参数结构体
    public struct DescribeSREInstanceAccessAddressResponse: TCResponse {
        /// 内网访问地址
        public let intranetAddress: String

        /// 公网访问地址
        public let internetAddress: String

        /// apollo多环境公网ip
        public let envAddressInfos: [EnvAddressInfo]

        /// 控制台公网访问地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let consoleInternetAddress: String?

        /// 控制台内网访问地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let consoleIntranetAddress: String?

        /// 客户端公网带宽
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let internetBandWidth: Int64?

        /// 控制台公网带宽
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let consoleInternetBandWidth: Int64?

        /// 北极星限流server节点接入IP
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let limiterAddressInfos: [PolarisLimiterAddress]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case intranetAddress = "IntranetAddress"
            case internetAddress = "InternetAddress"
            case envAddressInfos = "EnvAddressInfos"
            case consoleInternetAddress = "ConsoleInternetAddress"
            case consoleIntranetAddress = "ConsoleIntranetAddress"
            case internetBandWidth = "InternetBandWidth"
            case consoleInternetBandWidth = "ConsoleInternetBandWidth"
            case limiterAddressInfos = "LimiterAddressInfos"
            case requestId = "RequestId"
        }
    }

    /// 查询引擎实例访问地址
    @inlinable
    public func describeSREInstanceAccessAddress(_ input: DescribeSREInstanceAccessAddressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSREInstanceAccessAddressResponse> {
        self.client.execute(action: "DescribeSREInstanceAccessAddress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询引擎实例访问地址
    @inlinable
    public func describeSREInstanceAccessAddress(_ input: DescribeSREInstanceAccessAddressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSREInstanceAccessAddressResponse {
        try await self.client.execute(action: "DescribeSREInstanceAccessAddress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询引擎实例访问地址
    @inlinable
    public func describeSREInstanceAccessAddress(instanceId: String? = nil, vpcId: String? = nil, subnetId: String? = nil, workload: String? = nil, engineRegion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSREInstanceAccessAddressResponse> {
        self.describeSREInstanceAccessAddress(.init(instanceId: instanceId, vpcId: vpcId, subnetId: subnetId, workload: workload, engineRegion: engineRegion), region: region, logger: logger, on: eventLoop)
    }

    /// 查询引擎实例访问地址
    @inlinable
    public func describeSREInstanceAccessAddress(instanceId: String? = nil, vpcId: String? = nil, subnetId: String? = nil, workload: String? = nil, engineRegion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSREInstanceAccessAddressResponse {
        try await self.describeSREInstanceAccessAddress(.init(instanceId: instanceId, vpcId: vpcId, subnetId: subnetId, workload: workload, engineRegion: engineRegion), region: region, logger: logger, on: eventLoop)
    }
}
