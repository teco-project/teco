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

extension Cwp {
    /// CreateLicenseOrder请求参数结构体
    public struct CreateLicenseOrderRequest: TCRequest {
        /// 标签数组, 空则表示不需要绑定标签
        public let tags: [Tags]?

        /// 授权类型, 0 专业版-按量计费, 1专业版-包年包月 , 2 旗舰版-包年包月
        /// 默认为0
        public let licenseType: UInt64?

        /// 授权数量 , 需要购买的数量.
        /// 默认为1
        public let licenseNum: UInt64?

        /// 购买订单地域,这里仅支持 1 广州,9 新加坡. 推荐选择广州. 新加坡地域为白名单用户购买.
        /// 默认为1
        public let regionId: UInt64?

        /// 项目ID .
        /// 默认为0
        public let projectId: UInt64?

        /// 购买时间长度,默认1 , 可选值为1,2,3,4,5,6,7,8,9,10,11,12,24,36
        /// 该参数仅包年包月生效
        public let timeSpan: UInt64?

        /// 是否自动续费, 默认不自动续费.
        /// 该参数仅包年包月生效
        public let autoRenewFlag: Bool?

        /// 该字段作废
        public let autoProtectOpenConfig: String?

        /// 变配参数
        public let modifyConfig: OrderModifyObject?

        public init(tags: [Tags]? = nil, licenseType: UInt64? = nil, licenseNum: UInt64? = nil, regionId: UInt64? = nil, projectId: UInt64? = nil, timeSpan: UInt64? = nil, autoRenewFlag: Bool? = nil, autoProtectOpenConfig: String? = nil, modifyConfig: OrderModifyObject? = nil) {
            self.tags = tags
            self.licenseType = licenseType
            self.licenseNum = licenseNum
            self.regionId = regionId
            self.projectId = projectId
            self.timeSpan = timeSpan
            self.autoRenewFlag = autoRenewFlag
            self.autoProtectOpenConfig = autoProtectOpenConfig
            self.modifyConfig = modifyConfig
        }

        enum CodingKeys: String, CodingKey {
            case tags = "Tags"
            case licenseType = "LicenseType"
            case licenseNum = "LicenseNum"
            case regionId = "RegionId"
            case projectId = "ProjectId"
            case timeSpan = "TimeSpan"
            case autoRenewFlag = "AutoRenewFlag"
            case autoProtectOpenConfig = "AutoProtectOpenConfig"
            case modifyConfig = "ModifyConfig"
        }
    }

    /// CreateLicenseOrder返回参数结构体
    public struct CreateLicenseOrderResponse: TCResponse {
        /// 订单号列表
        public let dealNames: [String]

        /// 资源ID列表,预付费订单该字段空值
        public let resourceIds: [String]

        /// 大订单号 , 后付费该字段空值
        public let bigDealId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dealNames = "DealNames"
            case resourceIds = "ResourceIds"
            case bigDealId = "BigDealId"
            case requestId = "RequestId"
        }
    }

    /// 创建授权订单
    ///
    /// CreateLicenseOrder 该接口可以创建专业版/旗舰版订单
    /// 支持预付费后付费创建
    /// 后付费订单直接创建成功
    /// 预付费订单仅下单不支付,需要调用计费支付接口进行支付
    @inlinable
    public func createLicenseOrder(_ input: CreateLicenseOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLicenseOrderResponse> {
        self.client.execute(action: "CreateLicenseOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建授权订单
    ///
    /// CreateLicenseOrder 该接口可以创建专业版/旗舰版订单
    /// 支持预付费后付费创建
    /// 后付费订单直接创建成功
    /// 预付费订单仅下单不支付,需要调用计费支付接口进行支付
    @inlinable
    public func createLicenseOrder(_ input: CreateLicenseOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLicenseOrderResponse {
        try await self.client.execute(action: "CreateLicenseOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建授权订单
    ///
    /// CreateLicenseOrder 该接口可以创建专业版/旗舰版订单
    /// 支持预付费后付费创建
    /// 后付费订单直接创建成功
    /// 预付费订单仅下单不支付,需要调用计费支付接口进行支付
    @inlinable
    public func createLicenseOrder(tags: [Tags]? = nil, licenseType: UInt64? = nil, licenseNum: UInt64? = nil, regionId: UInt64? = nil, projectId: UInt64? = nil, timeSpan: UInt64? = nil, autoRenewFlag: Bool? = nil, autoProtectOpenConfig: String? = nil, modifyConfig: OrderModifyObject? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLicenseOrderResponse> {
        self.createLicenseOrder(.init(tags: tags, licenseType: licenseType, licenseNum: licenseNum, regionId: regionId, projectId: projectId, timeSpan: timeSpan, autoRenewFlag: autoRenewFlag, autoProtectOpenConfig: autoProtectOpenConfig, modifyConfig: modifyConfig), region: region, logger: logger, on: eventLoop)
    }

    /// 创建授权订单
    ///
    /// CreateLicenseOrder 该接口可以创建专业版/旗舰版订单
    /// 支持预付费后付费创建
    /// 后付费订单直接创建成功
    /// 预付费订单仅下单不支付,需要调用计费支付接口进行支付
    @inlinable
    public func createLicenseOrder(tags: [Tags]? = nil, licenseType: UInt64? = nil, licenseNum: UInt64? = nil, regionId: UInt64? = nil, projectId: UInt64? = nil, timeSpan: UInt64? = nil, autoRenewFlag: Bool? = nil, autoProtectOpenConfig: String? = nil, modifyConfig: OrderModifyObject? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLicenseOrderResponse {
        try await self.createLicenseOrder(.init(tags: tags, licenseType: licenseType, licenseNum: licenseNum, regionId: regionId, projectId: projectId, timeSpan: timeSpan, autoRenewFlag: autoRenewFlag, autoProtectOpenConfig: autoProtectOpenConfig, modifyConfig: modifyConfig), region: region, logger: logger, on: eventLoop)
    }
}
