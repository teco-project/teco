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

extension Bm {
    /// CreateSpotDevice请求参数结构体
    public struct CreateSpotDeviceRequest: TCRequestModel {
        /// 可用区名称。如ap-guangzhou-bls-1, 通过DescribeRegions获取
        public let zone: String

        /// 计算单元类型, 如v3.c2.medium，更详细的ComputeType参考[竞价实例产品文档](https://cloud.tencent.com/document/product/386/30256)
        public let computeType: String

        /// 操作系统类型ID
        public let osTypeId: UInt64

        /// 私有网络ID
        public let vpcId: String

        /// 子网ID
        public let subnetId: String

        /// 购买的计算单元个数
        public let goodsNum: UInt64

        /// 出价策略。可取值为SpotWithPriceLimit和SpotAsPriceGo。SpotWithPriceLimit，用户设置价格上限，需要传SpotPriceLimit参数， 如果市场价高于用户的指定价格，则购买不成功;  SpotAsPriceGo 是随市场价的策略。
        public let spotStrategy: String

        /// 用户设置的价格。当为SpotWithPriceLimit竞价策略时有效
        public let spotPriceLimit: Float?

        /// 设置竞价实例密码。可选参数，没有指定会生成随机密码
        public let passwd: String?

        public init(zone: String, computeType: String, osTypeId: UInt64, vpcId: String, subnetId: String, goodsNum: UInt64, spotStrategy: String, spotPriceLimit: Float? = nil, passwd: String? = nil) {
            self.zone = zone
            self.computeType = computeType
            self.osTypeId = osTypeId
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.goodsNum = goodsNum
            self.spotStrategy = spotStrategy
            self.spotPriceLimit = spotPriceLimit
            self.passwd = passwd
        }

        enum CodingKeys: String, CodingKey {
            case zone = "Zone"
            case computeType = "ComputeType"
            case osTypeId = "OsTypeId"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case goodsNum = "GoodsNum"
            case spotStrategy = "SpotStrategy"
            case spotPriceLimit = "SpotPriceLimit"
            case passwd = "Passwd"
        }
    }

    /// CreateSpotDevice返回参数结构体
    public struct CreateSpotDeviceResponse: TCResponseModel {
        /// 创建的服务器ID
        public let resourceIds: [String]

        /// 任务ID
        public let flowId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case resourceIds = "ResourceIds"
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 创建黑石竞价实例
    @inlinable
    public func createSpotDevice(_ input: CreateSpotDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSpotDeviceResponse> {
        self.client.execute(action: "CreateSpotDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建黑石竞价实例
    @inlinable
    public func createSpotDevice(_ input: CreateSpotDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSpotDeviceResponse {
        try await self.client.execute(action: "CreateSpotDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建黑石竞价实例
    @inlinable
    public func createSpotDevice(zone: String, computeType: String, osTypeId: UInt64, vpcId: String, subnetId: String, goodsNum: UInt64, spotStrategy: String, spotPriceLimit: Float? = nil, passwd: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSpotDeviceResponse> {
        self.createSpotDevice(CreateSpotDeviceRequest(zone: zone, computeType: computeType, osTypeId: osTypeId, vpcId: vpcId, subnetId: subnetId, goodsNum: goodsNum, spotStrategy: spotStrategy, spotPriceLimit: spotPriceLimit, passwd: passwd), region: region, logger: logger, on: eventLoop)
    }

    /// 创建黑石竞价实例
    @inlinable
    public func createSpotDevice(zone: String, computeType: String, osTypeId: UInt64, vpcId: String, subnetId: String, goodsNum: UInt64, spotStrategy: String, spotPriceLimit: Float? = nil, passwd: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSpotDeviceResponse {
        try await self.createSpotDevice(CreateSpotDeviceRequest(zone: zone, computeType: computeType, osTypeId: osTypeId, vpcId: vpcId, subnetId: subnetId, goodsNum: goodsNum, spotStrategy: spotStrategy, spotPriceLimit: spotPriceLimit, passwd: passwd), region: region, logger: logger, on: eventLoop)
    }
}
