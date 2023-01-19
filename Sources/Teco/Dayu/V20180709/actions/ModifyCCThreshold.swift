//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Dayu {
    /// ModifyCCThreshold请求参数结构体
    public struct ModifyCCThresholdRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版；basic表示基础防护）
        public let business: String

        /// CC防护阈值，取值(0 100 150 240 350 480 550 700 850 1000 1500 2000 3000 5000 10000 20000);
        /// 当Business为高防IP、高防IP专业版时，其CC防护最大阈值跟资源的保底防护带宽有关，对应关系如下：
        ///   保底带宽: 最大C防护阈值
        ///   10:  20000,
        ///   20:  40000,
        ///   30:  70000,
        ///   40:  100000,
        ///   50:  150000,
        ///   60:  200000,
        ///   80:  250000,
        ///   100: 300000,
        public let threshold: UInt64

        /// 资源ID
        public let id: String?

        /// 可选字段，代表CC防护类型，取值[http（HTTP协议的CC防护），https（HTTPS协议的CC防护）]；当不填时，默认为HTTP协议的CC防护；当填写https时还需要填写RuleId字段；
        public let `protocol`: String?

        /// 可选字段，表示HTTPS协议的7层转发规则ID（通过获取7层转发规则接口可以获取规则ID）；
        /// 当Protocol=https时必须填写；
        public let ruleId: String?

        /// 查询的IP地址（仅基础防护提供），取值如：1.1.1.1
        public let basicIp: String?

        /// 查询IP所属地域（仅基础防护提供），取值如：gz、bj、sh、hk等地域缩写
        public let basicRegion: String?

        /// 专区类型（仅基础防护提供），取值如：公有云专区：public，黑石专区：bm, NAT服务器专区：nat，互联网通道：channel。
        public let basicBizType: String?

        /// 设备类型（仅基础防护提供），取值如：服务器：cvm，公有云负载均衡：clb，黑石负载均衡：lb，NAT服务器：nat，互联网通道：channel.
        public let basicDeviceType: String?

        /// 仅基础防护提供。可选，IPInstance Nat 网关（如果查询的设备类型是NAT服务器，需要传此参数，通过nat资源查询接口获取）
        public let basicIpInstance: String?

        /// 仅基础防护提供。可选，运营商线路（如果查询的设备类型是NAT服务器，需要传此参数为5）
        public let basicIspCode: UInt64?

        /// 可选字段，当协议取值HTTPS时，必填
        public let domain: String?

        public init(business: String, threshold: UInt64, id: String? = nil, protocol: String? = nil, ruleId: String? = nil, basicIp: String? = nil, basicRegion: String? = nil, basicBizType: String? = nil, basicDeviceType: String? = nil, basicIpInstance: String? = nil, basicIspCode: UInt64? = nil, domain: String? = nil) {
            self.business = business
            self.threshold = threshold
            self.id = id
            self.`protocol` = `protocol`
            self.ruleId = ruleId
            self.basicIp = basicIp
            self.basicRegion = basicRegion
            self.basicBizType = basicBizType
            self.basicDeviceType = basicDeviceType
            self.basicIpInstance = basicIpInstance
            self.basicIspCode = basicIspCode
            self.domain = domain
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case threshold = "Threshold"
            case id = "Id"
            case `protocol` = "Protocol"
            case ruleId = "RuleId"
            case basicIp = "BasicIp"
            case basicRegion = "BasicRegion"
            case basicBizType = "BasicBizType"
            case basicDeviceType = "BasicDeviceType"
            case basicIpInstance = "BasicIpInstance"
            case basicIspCode = "BasicIspCode"
            case domain = "Domain"
        }
    }

    /// ModifyCCThreshold返回参数结构体
    public struct ModifyCCThresholdResponse: TCResponseModel {
        /// 成功码
        public let success: SuccessCode

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case success = "Success"
            case requestId = "RequestId"
        }
    }

    /// 修改CC的防护阈值
    @inlinable
    public func modifyCCThreshold(_ input: ModifyCCThresholdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCCThresholdResponse> {
        self.client.execute(action: "ModifyCCThreshold", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改CC的防护阈值
    @inlinable
    public func modifyCCThreshold(_ input: ModifyCCThresholdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCCThresholdResponse {
        try await self.client.execute(action: "ModifyCCThreshold", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改CC的防护阈值
    @inlinable
    public func modifyCCThreshold(business: String, threshold: UInt64, id: String? = nil, protocol: String? = nil, ruleId: String? = nil, basicIp: String? = nil, basicRegion: String? = nil, basicBizType: String? = nil, basicDeviceType: String? = nil, basicIpInstance: String? = nil, basicIspCode: UInt64? = nil, domain: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCCThresholdResponse> {
        self.modifyCCThreshold(ModifyCCThresholdRequest(business: business, threshold: threshold, id: id, protocol: `protocol`, ruleId: ruleId, basicIp: basicIp, basicRegion: basicRegion, basicBizType: basicBizType, basicDeviceType: basicDeviceType, basicIpInstance: basicIpInstance, basicIspCode: basicIspCode, domain: domain), region: region, logger: logger, on: eventLoop)
    }

    /// 修改CC的防护阈值
    @inlinable
    public func modifyCCThreshold(business: String, threshold: UInt64, id: String? = nil, protocol: String? = nil, ruleId: String? = nil, basicIp: String? = nil, basicRegion: String? = nil, basicBizType: String? = nil, basicDeviceType: String? = nil, basicIpInstance: String? = nil, basicIspCode: UInt64? = nil, domain: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCCThresholdResponse {
        try await self.modifyCCThreshold(ModifyCCThresholdRequest(business: business, threshold: threshold, id: id, protocol: `protocol`, ruleId: ruleId, basicIp: basicIp, basicRegion: basicRegion, basicBizType: basicBizType, basicDeviceType: basicDeviceType, basicIpInstance: basicIpInstance, basicIspCode: basicIspCode, domain: domain), region: region, logger: logger, on: eventLoop)
    }
}
