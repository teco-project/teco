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

extension Tcss {
    /// DescribeAssetImageDetail请求参数结构体
    public struct DescribeAssetImageDetailRequest: TCRequestModel {
        /// 镜像id
        public let imageID: String

        public init(imageID: String) {
            self.imageID = imageID
        }

        enum CodingKeys: String, CodingKey {
            case imageID = "ImageID"
        }
    }

    /// DescribeAssetImageDetail返回参数结构体
    public struct DescribeAssetImageDetailResponse: TCResponseModel {
        /// 镜像ID
        public let imageID: String

        /// 镜像名称
        public let imageName: String

        /// 创建时间
        public let createTime: String

        /// 镜像大小
        public let size: UInt64

        /// 关联主机个数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let hostCnt: UInt64?

        /// 关联容器个数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let containerCnt: UInt64?

        /// 最近扫描时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scanTime: String?

        /// 漏洞个数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vulCnt: UInt64?

        /// 风险行为数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let riskCnt: UInt64?

        /// 敏感信息数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sensitiveInfoCnt: UInt64?

        /// 是否信任镜像
        public let isTrustImage: Bool

        /// 镜像系统
        public let osName: String

        /// agent镜像扫描错误
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let agentError: String?

        /// 后端镜像扫描错误
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scanError: String?

        /// 系统架构
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let architecture: String?

        /// 作者
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let author: String?

        /// 构建历史
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let buildHistory: String?

        /// 木马扫描进度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scanVirusProgress: UInt64?

        /// 漏洞扫进度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scanVulProgress: UInt64?

        /// 敏感信息扫描进度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scanRiskProgress: UInt64?

        /// 木马扫描错误
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scanVirusError: String?

        /// 漏洞扫描错误
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scanVulError: String?

        /// 敏感信息错误
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scanRiskError: String?

        /// 镜像扫描状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scanStatus: String?

        /// 木马病毒数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let virusCnt: UInt64?

        /// 镜像扫描状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: UInt64?

        /// 剩余扫描时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let remainScanTime: UInt64?

        /// 授权为：1，未授权为：0
        public let isAuthorized: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case imageID = "ImageID"
            case imageName = "ImageName"
            case createTime = "CreateTime"
            case size = "Size"
            case hostCnt = "HostCnt"
            case containerCnt = "ContainerCnt"
            case scanTime = "ScanTime"
            case vulCnt = "VulCnt"
            case riskCnt = "RiskCnt"
            case sensitiveInfoCnt = "SensitiveInfoCnt"
            case isTrustImage = "IsTrustImage"
            case osName = "OsName"
            case agentError = "AgentError"
            case scanError = "ScanError"
            case architecture = "Architecture"
            case author = "Author"
            case buildHistory = "BuildHistory"
            case scanVirusProgress = "ScanVirusProgress"
            case scanVulProgress = "ScanVulProgress"
            case scanRiskProgress = "ScanRiskProgress"
            case scanVirusError = "ScanVirusError"
            case scanVulError = "ScanVulError"
            case scanRiskError = "ScanRiskError"
            case scanStatus = "ScanStatus"
            case virusCnt = "VirusCnt"
            case status = "Status"
            case remainScanTime = "RemainScanTime"
            case isAuthorized = "IsAuthorized"
            case requestId = "RequestId"
        }
    }

    /// 查询镜像信息
    ///
    /// 查询镜像详细信息
    @inlinable
    public func describeAssetImageDetail(_ input: DescribeAssetImageDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetImageDetailResponse> {
        self.client.execute(action: "DescribeAssetImageDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询镜像信息
    ///
    /// 查询镜像详细信息
    @inlinable
    public func describeAssetImageDetail(_ input: DescribeAssetImageDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageDetailResponse {
        try await self.client.execute(action: "DescribeAssetImageDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询镜像信息
    ///
    /// 查询镜像详细信息
    @inlinable
    public func describeAssetImageDetail(imageID: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetImageDetailResponse> {
        self.describeAssetImageDetail(.init(imageID: imageID), region: region, logger: logger, on: eventLoop)
    }

    /// 查询镜像信息
    ///
    /// 查询镜像详细信息
    @inlinable
    public func describeAssetImageDetail(imageID: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageDetailResponse {
        try await self.describeAssetImageDetail(.init(imageID: imageID), region: region, logger: logger, on: eventLoop)
    }
}
