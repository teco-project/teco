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

extension Ecm {
    /// DescribeConfig请求参数结构体
    public struct DescribeConfigRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeConfig返回参数结构体
    public struct DescribeConfigResponse: TCResponseModel {
        /// 网络带宽硬盘大小的范围信息。
        public let networkStorageRange: NetworkStorageRange

        /// 镜像操作系统白名单。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let imageWhiteSet: [String]?

        /// 网络限额信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceNetworkLimitConfigs: [InstanceNetworkLimitConfig]?

        /// 镜像限额信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let imageLimits: ImageLimitConfig?

        /// 默认是否IP直通，用于模块创建，虚机购买等具有直通参数场景时的默认参数。
        public let defaultIPDirect: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case networkStorageRange = "NetworkStorageRange"
            case imageWhiteSet = "ImageWhiteSet"
            case instanceNetworkLimitConfigs = "InstanceNetworkLimitConfigs"
            case imageLimits = "ImageLimits"
            case defaultIPDirect = "DefaultIPDirect"
            case requestId = "RequestId"
        }
    }

    /// 获取配置限制信息
    ///
    /// 获取带宽硬盘等数据的限制
    @inlinable
    public func describeConfig(_ input: DescribeConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConfigResponse> {
        self.client.execute(action: "DescribeConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取配置限制信息
    ///
    /// 获取带宽硬盘等数据的限制
    @inlinable
    public func describeConfig(_ input: DescribeConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConfigResponse {
        try await self.client.execute(action: "DescribeConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取配置限制信息
    ///
    /// 获取带宽硬盘等数据的限制
    @inlinable
    public func describeConfig(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConfigResponse> {
        self.describeConfig(DescribeConfigRequest(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取配置限制信息
    ///
    /// 获取带宽硬盘等数据的限制
    @inlinable
    public func describeConfig(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConfigResponse {
        try await self.describeConfig(DescribeConfigRequest(), region: region, logger: logger, on: eventLoop)
    }
}
