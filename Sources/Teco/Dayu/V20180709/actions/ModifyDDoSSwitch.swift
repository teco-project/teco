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

extension Dayu {
    /// ModifyDDoSSwitch请求参数结构体
    public struct ModifyDDoSSwitchRequest: TCRequestModel {
        /// 大禹子产品代号（basic表示基础防护）
        public let business: String

        /// =get表示读取DDoS防护状态；=set表示修改DDoS防护状态；
        public let method: String

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

        /// 可选字段，防护状态值，取值[0（关闭），1（开启）]；当Method为get时可以不填写此字段；
        public let status: UInt64?

        public init(business: String, method: String, ip: String? = nil, bizType: String? = nil, deviceType: String? = nil, instanceId: String? = nil, ipRegion: String? = nil, status: UInt64? = nil) {
            self.business = business
            self.method = method
            self.ip = ip
            self.bizType = bizType
            self.deviceType = deviceType
            self.instanceId = instanceId
            self.ipRegion = ipRegion
            self.status = status
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case method = "Method"
            case ip = "Ip"
            case bizType = "BizType"
            case deviceType = "DeviceType"
            case instanceId = "InstanceId"
            case ipRegion = "IPRegion"
            case status = "Status"
        }
    }

    /// ModifyDDoSSwitch返回参数结构体
    public struct ModifyDDoSSwitchResponse: TCResponseModel {
        /// 当前防护状态值，取值[0（关闭），1（开启）]
        public let status: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case requestId = "RequestId"
        }
    }

    /// 开启或关闭DDoS防护
    ///
    /// 开启或关闭DDoS防护，只支持基础防护产品；
    @inlinable
    public func modifyDDoSSwitch(_ input: ModifyDDoSSwitchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDDoSSwitchResponse> {
        self.client.execute(action: "ModifyDDoSSwitch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 开启或关闭DDoS防护
    ///
    /// 开启或关闭DDoS防护，只支持基础防护产品；
    @inlinable
    public func modifyDDoSSwitch(_ input: ModifyDDoSSwitchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDDoSSwitchResponse {
        try await self.client.execute(action: "ModifyDDoSSwitch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 开启或关闭DDoS防护
    ///
    /// 开启或关闭DDoS防护，只支持基础防护产品；
    @inlinable
    public func modifyDDoSSwitch(business: String, method: String, ip: String? = nil, bizType: String? = nil, deviceType: String? = nil, instanceId: String? = nil, ipRegion: String? = nil, status: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDDoSSwitchResponse> {
        self.modifyDDoSSwitch(.init(business: business, method: method, ip: ip, bizType: bizType, deviceType: deviceType, instanceId: instanceId, ipRegion: ipRegion, status: status), region: region, logger: logger, on: eventLoop)
    }

    /// 开启或关闭DDoS防护
    ///
    /// 开启或关闭DDoS防护，只支持基础防护产品；
    @inlinable
    public func modifyDDoSSwitch(business: String, method: String, ip: String? = nil, bizType: String? = nil, deviceType: String? = nil, instanceId: String? = nil, ipRegion: String? = nil, status: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDDoSSwitchResponse {
        try await self.modifyDDoSSwitch(.init(business: business, method: method, ip: ip, bizType: bizType, deviceType: deviceType, instanceId: instanceId, ipRegion: ipRegion, status: status), region: region, logger: logger, on: eventLoop)
    }
}
