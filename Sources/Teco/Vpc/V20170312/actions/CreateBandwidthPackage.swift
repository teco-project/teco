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

extension Vpc {
    /// CreateBandwidthPackage请求参数结构体
    public struct CreateBandwidthPackageRequest: TCRequestModel {
        /// 带宽包类型, 默认值: BGP, 可选值:
        /// <li>BGP: 普通BGP共享带宽包</li>
        /// <li>HIGH_QUALITY_BGP: 精品BGP共享带宽包</li>
        public let networkType: String?

        /// 带宽包计费类型, 默认为: TOP5_POSTPAID_BY_MONTH, 可选值:
        /// <li>TOP5_POSTPAID_BY_MONTH: 按月后付费TOP5计费</li>
        /// <li>PERCENT95_POSTPAID_BY_MONTH: 按月后付费月95计费</li>
        /// <li>FIXED_PREPAID_BY_MONTH: 包月预付费计费</li>
        public let chargeType: String?

        /// 带宽包名称。
        public let bandwidthPackageName: String?

        /// 带宽包数量(传统账户类型只能填1), 标准账户类型取值范围为1~20。
        public let bandwidthPackageCount: UInt64?

        /// 带宽包限速大小。单位：Mbps，-1表示不限速。该功能当前内测中，暂不对外开放。
        public let internetMaxBandwidth: Int64?

        /// 需要关联的标签列表。
        public let tags: [Tag]?

        /// 带宽包协议类型。当前支持'ipv4'和'ipv6'协议带宽包，默认值是'ipv4'。
        public let `protocol`: String?

        public init(networkType: String? = nil, chargeType: String? = nil, bandwidthPackageName: String? = nil, bandwidthPackageCount: UInt64? = nil, internetMaxBandwidth: Int64? = nil, tags: [Tag]? = nil, protocol: String? = nil) {
            self.networkType = networkType
            self.chargeType = chargeType
            self.bandwidthPackageName = bandwidthPackageName
            self.bandwidthPackageCount = bandwidthPackageCount
            self.internetMaxBandwidth = internetMaxBandwidth
            self.tags = tags
            self.`protocol` = `protocol`
        }

        enum CodingKeys: String, CodingKey {
            case networkType = "NetworkType"
            case chargeType = "ChargeType"
            case bandwidthPackageName = "BandwidthPackageName"
            case bandwidthPackageCount = "BandwidthPackageCount"
            case internetMaxBandwidth = "InternetMaxBandwidth"
            case tags = "Tags"
            case `protocol` = "Protocol"
        }
    }

    /// CreateBandwidthPackage返回参数结构体
    public struct CreateBandwidthPackageResponse: TCResponseModel {
        /// 带宽包唯一ID。
        public let bandwidthPackageId: String

        /// 带宽包唯一ID列表(申请数量大于1时有效)。
        public let bandwidthPackageIds: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case bandwidthPackageId = "BandwidthPackageId"
            case bandwidthPackageIds = "BandwidthPackageIds"
            case requestId = "RequestId"
        }
    }

    /// 创建共享带宽包
    ///
    /// 本接口 (CreateBandwidthPackage) 支持创建[设备带宽包](https://cloud.tencent.com/document/product/684/15245#bwptype)和[IP带宽包](https://cloud.tencent.com/document/product/684/15245#bwptype)。
    @inlinable
    public func createBandwidthPackage(_ input: CreateBandwidthPackageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBandwidthPackageResponse> {
        self.client.execute(action: "CreateBandwidthPackage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建共享带宽包
    ///
    /// 本接口 (CreateBandwidthPackage) 支持创建[设备带宽包](https://cloud.tencent.com/document/product/684/15245#bwptype)和[IP带宽包](https://cloud.tencent.com/document/product/684/15245#bwptype)。
    @inlinable
    public func createBandwidthPackage(_ input: CreateBandwidthPackageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBandwidthPackageResponse {
        try await self.client.execute(action: "CreateBandwidthPackage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建共享带宽包
    ///
    /// 本接口 (CreateBandwidthPackage) 支持创建[设备带宽包](https://cloud.tencent.com/document/product/684/15245#bwptype)和[IP带宽包](https://cloud.tencent.com/document/product/684/15245#bwptype)。
    @inlinable
    public func createBandwidthPackage(networkType: String? = nil, chargeType: String? = nil, bandwidthPackageName: String? = nil, bandwidthPackageCount: UInt64? = nil, internetMaxBandwidth: Int64? = nil, tags: [Tag]? = nil, protocol: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBandwidthPackageResponse> {
        self.createBandwidthPackage(CreateBandwidthPackageRequest(networkType: networkType, chargeType: chargeType, bandwidthPackageName: bandwidthPackageName, bandwidthPackageCount: bandwidthPackageCount, internetMaxBandwidth: internetMaxBandwidth, tags: tags, protocol: `protocol`), region: region, logger: logger, on: eventLoop)
    }

    /// 创建共享带宽包
    ///
    /// 本接口 (CreateBandwidthPackage) 支持创建[设备带宽包](https://cloud.tencent.com/document/product/684/15245#bwptype)和[IP带宽包](https://cloud.tencent.com/document/product/684/15245#bwptype)。
    @inlinable
    public func createBandwidthPackage(networkType: String? = nil, chargeType: String? = nil, bandwidthPackageName: String? = nil, bandwidthPackageCount: UInt64? = nil, internetMaxBandwidth: Int64? = nil, tags: [Tag]? = nil, protocol: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBandwidthPackageResponse {
        try await self.createBandwidthPackage(CreateBandwidthPackageRequest(networkType: networkType, chargeType: chargeType, bandwidthPackageName: bandwidthPackageName, bandwidthPackageCount: bandwidthPackageCount, internetMaxBandwidth: internetMaxBandwidth, tags: tags, protocol: `protocol`), region: region, logger: logger, on: eventLoop)
    }
}
