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
    /// DescribeDDoSDefendStatus请求参数结构体
    public struct DescribeDDoSDefendStatusRequest: TCRequestModel {
        /// 大禹子产品代号（basic表示基础防护；bgp表示独享包；bgp-multip表示共享包；bgpip表示高防IP；net表示高防IP专业版）
        public let business: String

        /// 资源实例ID，只有当Business不是基础防护时才需要填写此字段；
        public let id: String?

        /// 基础防护的IP，只有当Business为基础防护时才需要填写此字段；
        public let ip: String?

        /// 只有当Business为基础防护时才需要填写此字段，IP所属的产品类型，取值[public（CVM产品），bm（黑石产品），eni（弹性网卡），vpngw（VPN网关）， natgw（NAT网关），waf（Web应用安全产品），fpc（金融产品），gaap（GAAP产品）, other(托管IP)]
        public let bizType: String?

        /// 只有当Business为基础防护时才需要填写此字段，IP所属的产品子类，取值[cvm（CVM），lb（负载均衡器），eni（弹性网卡），vpngw（VPN），natgw（NAT），waf（WAF），fpc（金融），gaap（GAAP），other（托管IP），eip（黑石弹性IP）]
        public let deviceType: String?

        /// 只有当Business为基础防护时才需要填写此字段，IP所属的资源实例ID，当绑定新IP时必须填写此字段；例如是弹性网卡的IP，则InstanceId填写弹性网卡的ID(eni-*);
        public let instanceId: String?

        /// 只有当Business为基础防护时才需要填写此字段，表示IP所属的地域，取值：
        /// "bj":     华北地区(北京)
        /// "cd":     西南地区(成都)
        /// "cq":     西南地区(重庆)
        /// "gz":     华南地区(广州)
        /// "gzopen": 华南地区(广州Open)
        /// "hk":     中国香港
        /// "kr":     东南亚地区(首尔)
        /// "sh":     华东地区(上海)
        /// "shjr":   华东地区(上海金融)
        /// "szjr":   华南地区(深圳金融)
        /// "sg":     东南亚地区(新加坡)
        /// "th":     东南亚地区(泰国)
        /// "de":     欧洲地区(德国)
        /// "usw":    美国西部（硅谷）
        /// "ca":     北美地区(多伦多)
        /// "jp":     日本
        /// "hzec":   杭州
        /// "in":     印度
        /// "use":    美东地区（弗吉尼亚）
        /// "ru":     俄罗斯
        /// "tpe":    中国台湾
        /// "nj":     南京
        public let ipRegion: String?

        public init(business: String, id: String? = nil, ip: String? = nil, bizType: String? = nil, deviceType: String? = nil, instanceId: String? = nil, ipRegion: String? = nil) {
            self.business = business
            self.id = id
            self.ip = ip
            self.bizType = bizType
            self.deviceType = deviceType
            self.instanceId = instanceId
            self.ipRegion = ipRegion
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case ip = "Ip"
            case bizType = "BizType"
            case deviceType = "DeviceType"
            case instanceId = "InstanceId"
            case ipRegion = "IPRegion"
        }
    }

    /// DescribeDDoSDefendStatus返回参数结构体
    public struct DescribeDDoSDefendStatusResponse: TCResponseModel {
        /// 防护状态，为0表示防护处于关闭状态，为1表示防护处于开启状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let defendStatus: UInt64?

        /// 防护临时关闭的过期时间，当防护状态为开启时此字段为空；
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let undefendExpire: String?

        /// 控制台功能展示字段，为1表示控制台功能展示，为0表示控制台功能隐藏
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let showFlag: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case defendStatus = "DefendStatus"
            case undefendExpire = "UndefendExpire"
            case showFlag = "ShowFlag"
            case requestId = "RequestId"
        }
    }

    /// 获取DDoS防护状态
    ///
    /// 获取DDoS防护状态（临时关闭状态），支持产品：基础防护，独享包，共享包，高防IP，高防IP专业版；调用此接口是获取当前是否有设置临时关闭DDoS防护状态，如果有设置会返回临时关闭的时长等参数。
    @inlinable
    public func describeDDoSDefendStatus(_ input: DescribeDDoSDefendStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDDoSDefendStatusResponse> {
        self.client.execute(action: "DescribeDDoSDefendStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取DDoS防护状态
    ///
    /// 获取DDoS防护状态（临时关闭状态），支持产品：基础防护，独享包，共享包，高防IP，高防IP专业版；调用此接口是获取当前是否有设置临时关闭DDoS防护状态，如果有设置会返回临时关闭的时长等参数。
    @inlinable
    public func describeDDoSDefendStatus(_ input: DescribeDDoSDefendStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSDefendStatusResponse {
        try await self.client.execute(action: "DescribeDDoSDefendStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取DDoS防护状态
    ///
    /// 获取DDoS防护状态（临时关闭状态），支持产品：基础防护，独享包，共享包，高防IP，高防IP专业版；调用此接口是获取当前是否有设置临时关闭DDoS防护状态，如果有设置会返回临时关闭的时长等参数。
    @inlinable
    public func describeDDoSDefendStatus(business: String, id: String? = nil, ip: String? = nil, bizType: String? = nil, deviceType: String? = nil, instanceId: String? = nil, ipRegion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDDoSDefendStatusResponse> {
        self.describeDDoSDefendStatus(DescribeDDoSDefendStatusRequest(business: business, id: id, ip: ip, bizType: bizType, deviceType: deviceType, instanceId: instanceId, ipRegion: ipRegion), region: region, logger: logger, on: eventLoop)
    }

    /// 获取DDoS防护状态
    ///
    /// 获取DDoS防护状态（临时关闭状态），支持产品：基础防护，独享包，共享包，高防IP，高防IP专业版；调用此接口是获取当前是否有设置临时关闭DDoS防护状态，如果有设置会返回临时关闭的时长等参数。
    @inlinable
    public func describeDDoSDefendStatus(business: String, id: String? = nil, ip: String? = nil, bizType: String? = nil, deviceType: String? = nil, instanceId: String? = nil, ipRegion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSDefendStatusResponse {
        try await self.describeDDoSDefendStatus(DescribeDDoSDefendStatusRequest(business: business, id: id, ip: ip, bizType: bizType, deviceType: deviceType, instanceId: instanceId, ipRegion: ipRegion), region: region, logger: logger, on: eventLoop)
    }
}
