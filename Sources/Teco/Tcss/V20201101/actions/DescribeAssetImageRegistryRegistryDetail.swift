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

extension Tcss {
    /// DescribeAssetImageRegistryRegistryDetail请求参数结构体
    public struct DescribeAssetImageRegistryRegistryDetailRequest: TCRequest {
        /// 仓库唯一id
        public let registryId: Int64

        public init(registryId: Int64) {
            self.registryId = registryId
        }

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
        }
    }

    /// DescribeAssetImageRegistryRegistryDetail返回参数结构体
    public struct DescribeAssetImageRegistryRegistryDetailResponse: TCResponse {
        /// 仓库名
        public let name: String

        /// 用户名
        public let username: String

        /// 密码
        public let password: String

        /// 仓库url
        public let url: String

        /// 仓库类型，列表：harbor
        public let registryType: String

        /// 仓库版本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let registryVersion: String?

        /// 网络类型，列表：public（公网）,private（私网）
        public let netType: String

        /// 区域，列表:default（默认）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let registryRegion: String?

        /// 限速
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let speedLimit: UInt64?

        /// 安全模式（证书校验）：0（默认） 非安全模式（跳过证书校验）：1
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let insecure: UInt64?

        /// 联通性检测结果详情
        public let connDetectDetail: [RegistryConnDetectResult]?

        /// tcr情况下instance_id
        public let instanceID: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case username = "Username"
            case password = "Password"
            case url = "Url"
            case registryType = "RegistryType"
            case registryVersion = "RegistryVersion"
            case netType = "NetType"
            case registryRegion = "RegistryRegion"
            case speedLimit = "SpeedLimit"
            case insecure = "Insecure"
            case connDetectDetail = "ConnDetectDetail"
            case instanceID = "InstanceID"
            case requestId = "RequestId"
        }
    }

    /// 查看单个镜像仓库详细信息
    @inlinable
    public func describeAssetImageRegistryRegistryDetail(_ input: DescribeAssetImageRegistryRegistryDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetImageRegistryRegistryDetailResponse> {
        self.client.execute(action: "DescribeAssetImageRegistryRegistryDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看单个镜像仓库详细信息
    @inlinable
    public func describeAssetImageRegistryRegistryDetail(_ input: DescribeAssetImageRegistryRegistryDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageRegistryRegistryDetailResponse {
        try await self.client.execute(action: "DescribeAssetImageRegistryRegistryDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看单个镜像仓库详细信息
    @inlinable
    public func describeAssetImageRegistryRegistryDetail(registryId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetImageRegistryRegistryDetailResponse> {
        self.describeAssetImageRegistryRegistryDetail(.init(registryId: registryId), region: region, logger: logger, on: eventLoop)
    }

    /// 查看单个镜像仓库详细信息
    @inlinable
    public func describeAssetImageRegistryRegistryDetail(registryId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageRegistryRegistryDetailResponse {
        try await self.describeAssetImageRegistryRegistryDetail(.init(registryId: registryId), region: region, logger: logger, on: eventLoop)
    }
}
