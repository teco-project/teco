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

extension Zj {
    /// PushMmsContent请求参数结构体
    public struct PushMmsContentRequest: TCRequestModel {
        /// 商户证书
        public let license: String

        /// 素材样例id
        public let instanceId: Int64

        /// 手机号
        public let tel: String

        /// 附带数据字段
        public let session: String?

        /// 动态参数key(即申请样例时设置的u_或p_开头的动态参数,要求序号有序)
        public let dynamicParaKey: [String]?

        /// 动态参数值,和DynamicParaKey对应
        public let dynamicParaValue: [String]?

        public init(license: String, instanceId: Int64, tel: String, session: String? = nil, dynamicParaKey: [String]? = nil, dynamicParaValue: [String]? = nil) {
            self.license = license
            self.instanceId = instanceId
            self.tel = tel
            self.session = session
            self.dynamicParaKey = dynamicParaKey
            self.dynamicParaValue = dynamicParaValue
        }

        enum CodingKeys: String, CodingKey {
            case license = "License"
            case instanceId = "InstanceId"
            case tel = "Tel"
            case session = "Session"
            case dynamicParaKey = "DynamicParaKey"
            case dynamicParaValue = "DynamicParaValue"
        }
    }

    /// PushMmsContent返回参数结构体
    public struct PushMmsContentResponse: TCResponseModel {
        /// 推送短信返回信息
        public let data: PushMmsContentResp

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 推送超级短信内容
    ///
    /// 推送超级短信
    @inlinable
    public func pushMmsContent(_ input: PushMmsContentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PushMmsContentResponse> {
        self.client.execute(action: "PushMmsContent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 推送超级短信内容
    ///
    /// 推送超级短信
    @inlinable
    public func pushMmsContent(_ input: PushMmsContentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PushMmsContentResponse {
        try await self.client.execute(action: "PushMmsContent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 推送超级短信内容
    ///
    /// 推送超级短信
    @inlinable
    public func pushMmsContent(license: String, instanceId: Int64, tel: String, session: String? = nil, dynamicParaKey: [String]? = nil, dynamicParaValue: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PushMmsContentResponse> {
        self.pushMmsContent(.init(license: license, instanceId: instanceId, tel: tel, session: session, dynamicParaKey: dynamicParaKey, dynamicParaValue: dynamicParaValue), region: region, logger: logger, on: eventLoop)
    }

    /// 推送超级短信内容
    ///
    /// 推送超级短信
    @inlinable
    public func pushMmsContent(license: String, instanceId: Int64, tel: String, session: String? = nil, dynamicParaKey: [String]? = nil, dynamicParaValue: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PushMmsContentResponse {
        try await self.pushMmsContent(.init(license: license, instanceId: instanceId, tel: tel, session: session, dynamicParaKey: dynamicParaKey, dynamicParaValue: dynamicParaValue), region: region, logger: logger, on: eventLoop)
    }
}
