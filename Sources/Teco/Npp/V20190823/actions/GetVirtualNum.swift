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

extension Npp {
    /// GetVirtualNum请求参数结构体
    public struct GetVirtualNumRequest: TCRequestModel {
        /// 业务appid
        public let bizAppId: String

        /// 被叫号码(号码前加 0086，如 008613631686024)
        public let dst: String

        /// 主叫号码(号码前加 0086，如 008613631686024)，xb 模式下是不用填写，axb 模式下是必选
        public let src: String?

        /// {“accreditList”:[“008613631686024”,”008612345678910”]}，主要用于 N-1 场景，号码绑定非共享是独占型，指定了 dst 独占中间号绑定，accreditList 表示这个列表成员可以拨打 dst 绑 定的中间号，默认值为空，表示所有号码都可以拨打独占型中间号绑定，最大集合不允许超过 30 个，仅适用于xb模式
        public let accreditList: [String]?

        /// 指定中间号（格式：008617013541251），如果该中间号已被使用则返回绑定失败。如果不带该字段则由腾讯侧从号码池里自动分配
        public let assignVirtualNum: String?

        /// 是否录音，0表示不录音，1表示录音。默认为不录音，注意如果需要录音回调，通话完成后需要等待一段时间，收到录音回调之后，再解绑中间号。
        public let record: String?

        /// 主被叫显号号码归属地，指定该参数说明显号归属该城市，如果没有该城市号码会随机选取一个城市或者后台配置返回107，返回码详见 《腾讯-中间号-城市id.xlsx》
        public let cityId: String?

        /// 应用二级业务 ID，bizId 需保证在该 appId 下全局唯一，最大长度不超过 16 个字节。
        public let bizId: String?

        /// 号码最大绑定时间，不填默认为 24 小时，最长绑定时间是168小时，单位秒
        public let maxAssignTime: String?

        /// 主叫发起呼叫状态：1
        /// 被叫发起呼叫状态：256
        /// 主叫响铃状态：2
        /// 被叫响铃状态：512
        /// 主叫接听状态：4
        /// 被叫接听状态：1024
        /// 主叫拒绝接听状态：8
        /// 被叫拒绝接听状态：2048
        /// 主叫正常挂机状态：16
        /// 被叫正常挂机状态：4096
        /// 主叫呼叫异常：32
        /// 被叫呼叫异常：8192
        ///
        /// 例如：
        /// 值为 0：表示所有状态不需要推送
        /// 值为 4：表示只要推送主叫接听状态
        /// 值为 16191：表示所有状态都需要推送（上面所有值和）
        public let statusFlag: String?

        /// 请填写statusFlag并设置值，状态回调通知地址，正式环境可以配置默认推送地址
        public let statusUrl: String?

        /// 话单回调通知地址，正式环境可以配置默认推送地址
        public let hangupUrl: String?

        /// 录单 URL 回调通知地址，正式环境可以配置默认推送地址
        public let recordUrl: String?

        public init(bizAppId: String, dst: String, src: String? = nil, accreditList: [String]? = nil, assignVirtualNum: String? = nil, record: String? = nil, cityId: String? = nil, bizId: String? = nil, maxAssignTime: String? = nil, statusFlag: String? = nil, statusUrl: String? = nil, hangupUrl: String? = nil, recordUrl: String? = nil) {
            self.bizAppId = bizAppId
            self.dst = dst
            self.src = src
            self.accreditList = accreditList
            self.assignVirtualNum = assignVirtualNum
            self.record = record
            self.cityId = cityId
            self.bizId = bizId
            self.maxAssignTime = maxAssignTime
            self.statusFlag = statusFlag
            self.statusUrl = statusUrl
            self.hangupUrl = hangupUrl
            self.recordUrl = recordUrl
        }

        enum CodingKeys: String, CodingKey {
            case bizAppId = "BizAppId"
            case dst = "Dst"
            case src = "Src"
            case accreditList = "AccreditList"
            case assignVirtualNum = "AssignVirtualNum"
            case record = "Record"
            case cityId = "CityId"
            case bizId = "BizId"
            case maxAssignTime = "MaxAssignTime"
            case statusFlag = "StatusFlag"
            case statusUrl = "StatusUrl"
            case hangupUrl = "HangupUrl"
            case recordUrl = "RecordUrl"
        }
    }

    /// GetVirtualNum返回参数结构体
    public struct GetVirtualNumResponse: TCResponseModel {
        /// 错误码
        public let errorCode: String

        /// 绑定 ID，该 ID 全局唯一
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bindId: String?

        /// 中间号还剩引用计数，如果计数为 0 会解绑
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let refNum: String?

        /// 中间号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let virtualNum: String?

        /// 错误原因
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let msg: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errorCode = "ErrorCode"
            case bindId = "BindId"
            case refNum = "RefNum"
            case virtualNum = "VirtualNum"
            case msg = "Msg"
            case requestId = "RequestId"
        }
    }

    /// 直拨获取中间号
    ///
    /// 直拨获取中间号（App 使用方发起）
    @inlinable
    public func getVirtualNum(_ input: GetVirtualNumRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetVirtualNumResponse> {
        self.client.execute(action: "GetVirtualNum", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 直拨获取中间号
    ///
    /// 直拨获取中间号（App 使用方发起）
    @inlinable
    public func getVirtualNum(_ input: GetVirtualNumRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetVirtualNumResponse {
        try await self.client.execute(action: "GetVirtualNum", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 直拨获取中间号
    ///
    /// 直拨获取中间号（App 使用方发起）
    @inlinable
    public func getVirtualNum(bizAppId: String, dst: String, src: String? = nil, accreditList: [String]? = nil, assignVirtualNum: String? = nil, record: String? = nil, cityId: String? = nil, bizId: String? = nil, maxAssignTime: String? = nil, statusFlag: String? = nil, statusUrl: String? = nil, hangupUrl: String? = nil, recordUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetVirtualNumResponse> {
        let input = GetVirtualNumRequest(bizAppId: bizAppId, dst: dst, src: src, accreditList: accreditList, assignVirtualNum: assignVirtualNum, record: record, cityId: cityId, bizId: bizId, maxAssignTime: maxAssignTime, statusFlag: statusFlag, statusUrl: statusUrl, hangupUrl: hangupUrl, recordUrl: recordUrl)
        return self.client.execute(action: "GetVirtualNum", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 直拨获取中间号
    ///
    /// 直拨获取中间号（App 使用方发起）
    @inlinable
    public func getVirtualNum(bizAppId: String, dst: String, src: String? = nil, accreditList: [String]? = nil, assignVirtualNum: String? = nil, record: String? = nil, cityId: String? = nil, bizId: String? = nil, maxAssignTime: String? = nil, statusFlag: String? = nil, statusUrl: String? = nil, hangupUrl: String? = nil, recordUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetVirtualNumResponse {
        let input = GetVirtualNumRequest(bizAppId: bizAppId, dst: dst, src: src, accreditList: accreditList, assignVirtualNum: assignVirtualNum, record: record, cityId: cityId, bizId: bizId, maxAssignTime: maxAssignTime, statusFlag: statusFlag, statusUrl: statusUrl, hangupUrl: hangupUrl, recordUrl: recordUrl)
        return try await self.client.execute(action: "GetVirtualNum", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
