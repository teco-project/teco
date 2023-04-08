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

@_exported import struct Foundation.Date
import TecoCore
import TecoDateHelpers

extension Tcss {
    /// DescribeAssetImageRegistryDetail请求参数结构体
    public struct DescribeAssetImageRegistryDetailRequest: TCRequestModel {
        /// 仓库列表id
        public let id: UInt64?

        /// 镜像ID
        public let imageId: String?

        public init(id: UInt64? = nil, imageId: String? = nil) {
            self.id = id
            self.imageId = imageId
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case imageId = "ImageId"
        }
    }

    /// DescribeAssetImageRegistryDetail返回参数结构体
    public struct DescribeAssetImageRegistryDetailResponse: TCResponseModel {
        /// 镜像Digest
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let imageDigest: String?

        /// 镜像地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let imageRepoAddress: String?

        /// 镜像类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let registryType: String?

        /// 仓库名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let imageName: String?

        /// 镜像版本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let imageTag: String?

        /// 扫描时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scanTime: String?

        /// 扫描状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scanStatus: String?

        /// 安全漏洞数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vulCnt: UInt64?

        /// 木马病毒数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let virusCnt: UInt64?

        /// 风险行为数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let riskCnt: UInt64?

        /// 敏感信息数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sentiveInfoCnt: UInt64?

        /// 镜像系统
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let osName: String?

        /// 木马扫描错误
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scanVirusError: String?

        /// 漏洞扫描错误
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scanVulError: String?

        /// 层文件信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let layerInfo: String?

        /// 实例id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceId: String?

        /// 实例名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceName: String?

        /// 命名空间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let namespace: String?

        /// 高危扫描错误
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scanRiskError: String?

        /// 木马信息扫描进度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scanVirusProgress: UInt64?

        /// 漏洞扫描进度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scanVulProgress: UInt64?

        /// 敏感扫描进度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scanRiskProgress: UInt64?

        /// 剩余扫描时间秒
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scanRemainTime: UInt64?

        /// cve扫描状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cveStatus: String?

        /// 高危扫描状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let riskStatus: String?

        /// 木马扫描状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let virusStatus: String?

        /// 总进度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let progress: UInt64?

        /// 授权状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isAuthorized: UInt64?

        /// 镜像大小
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let imageSize: UInt64?

        /// 镜像Id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let imageId: String?

        /// 镜像区域
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let registryRegion: String?

        /// 镜像创建的时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var imageCreateTime: Date?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case imageDigest = "ImageDigest"
            case imageRepoAddress = "ImageRepoAddress"
            case registryType = "RegistryType"
            case imageName = "ImageName"
            case imageTag = "ImageTag"
            case scanTime = "ScanTime"
            case scanStatus = "ScanStatus"
            case vulCnt = "VulCnt"
            case virusCnt = "VirusCnt"
            case riskCnt = "RiskCnt"
            case sentiveInfoCnt = "SentiveInfoCnt"
            case osName = "OsName"
            case scanVirusError = "ScanVirusError"
            case scanVulError = "ScanVulError"
            case layerInfo = "LayerInfo"
            case instanceId = "InstanceId"
            case instanceName = "InstanceName"
            case namespace = "Namespace"
            case scanRiskError = "ScanRiskError"
            case scanVirusProgress = "ScanVirusProgress"
            case scanVulProgress = "ScanVulProgress"
            case scanRiskProgress = "ScanRiskProgress"
            case scanRemainTime = "ScanRemainTime"
            case cveStatus = "CveStatus"
            case riskStatus = "RiskStatus"
            case virusStatus = "VirusStatus"
            case progress = "Progress"
            case isAuthorized = "IsAuthorized"
            case imageSize = "ImageSize"
            case imageId = "ImageId"
            case registryRegion = "RegistryRegion"
            case imageCreateTime = "ImageCreateTime"
            case requestId = "RequestId"
        }
    }

    /// 镜像仓库查询镜像仓库详情
    ///
    /// 镜像仓库镜像仓库列表详情
    @inlinable
    public func describeAssetImageRegistryDetail(_ input: DescribeAssetImageRegistryDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetImageRegistryDetailResponse> {
        self.client.execute(action: "DescribeAssetImageRegistryDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 镜像仓库查询镜像仓库详情
    ///
    /// 镜像仓库镜像仓库列表详情
    @inlinable
    public func describeAssetImageRegistryDetail(_ input: DescribeAssetImageRegistryDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageRegistryDetailResponse {
        try await self.client.execute(action: "DescribeAssetImageRegistryDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 镜像仓库查询镜像仓库详情
    ///
    /// 镜像仓库镜像仓库列表详情
    @inlinable
    public func describeAssetImageRegistryDetail(id: UInt64? = nil, imageId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetImageRegistryDetailResponse> {
        self.describeAssetImageRegistryDetail(.init(id: id, imageId: imageId), region: region, logger: logger, on: eventLoop)
    }

    /// 镜像仓库查询镜像仓库详情
    ///
    /// 镜像仓库镜像仓库列表详情
    @inlinable
    public func describeAssetImageRegistryDetail(id: UInt64? = nil, imageId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageRegistryDetailResponse {
        try await self.describeAssetImageRegistryDetail(.init(id: id, imageId: imageId), region: region, logger: logger, on: eventLoop)
    }
}
