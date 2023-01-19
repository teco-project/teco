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

extension Youmall {
    /// RegisterCallback请求参数结构体
    public struct RegisterCallbackRequest: TCRequestModel {
        /// 集团id，通过"指定身份标识获取客户门店列表"接口获取
        public let companyId: String

        /// 通知回调地址，完整url，示例（http://youmall.tencentcloudapi.com/）
        public let backUrl: String

        /// 请求时间戳
        public let time: UInt64

        /// 是否需要顾客图片，1-需要图片，其它-不需要图片
        public let needFacePic: UInt64?

        public init(companyId: String, backUrl: String, time: UInt64, needFacePic: UInt64? = nil) {
            self.companyId = companyId
            self.backUrl = backUrl
            self.time = time
            self.needFacePic = needFacePic
        }

        enum CodingKeys: String, CodingKey {
            case companyId = "CompanyId"
            case backUrl = "BackUrl"
            case time = "Time"
            case needFacePic = "NeedFacePic"
        }
    }

    /// RegisterCallback返回参数结构体
    public struct RegisterCallbackResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 门店到访通知回调地址注册
    ///
    /// 调用本接口在优Mall中注册自己集团的到店通知回调接口地址，接口协议为HTTP或HTTPS。注册后，若集团有特殊身份（例如老客）到店通知，优Mall后台将主动将到店信息push给该接口
    @inlinable
    public func registerCallback(_ input: RegisterCallbackRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterCallbackResponse> {
        self.client.execute(action: "RegisterCallback", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 门店到访通知回调地址注册
    ///
    /// 调用本接口在优Mall中注册自己集团的到店通知回调接口地址，接口协议为HTTP或HTTPS。注册后，若集团有特殊身份（例如老客）到店通知，优Mall后台将主动将到店信息push给该接口
    @inlinable
    public func registerCallback(_ input: RegisterCallbackRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RegisterCallbackResponse {
        try await self.client.execute(action: "RegisterCallback", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 门店到访通知回调地址注册
    ///
    /// 调用本接口在优Mall中注册自己集团的到店通知回调接口地址，接口协议为HTTP或HTTPS。注册后，若集团有特殊身份（例如老客）到店通知，优Mall后台将主动将到店信息push给该接口
    @inlinable
    public func registerCallback(companyId: String, backUrl: String, time: UInt64, needFacePic: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterCallbackResponse> {
        self.registerCallback(RegisterCallbackRequest(companyId: companyId, backUrl: backUrl, time: time, needFacePic: needFacePic), region: region, logger: logger, on: eventLoop)
    }

    /// 门店到访通知回调地址注册
    ///
    /// 调用本接口在优Mall中注册自己集团的到店通知回调接口地址，接口协议为HTTP或HTTPS。注册后，若集团有特殊身份（例如老客）到店通知，优Mall后台将主动将到店信息push给该接口
    @inlinable
    public func registerCallback(companyId: String, backUrl: String, time: UInt64, needFacePic: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RegisterCallbackResponse {
        try await self.registerCallback(RegisterCallbackRequest(companyId: companyId, backUrl: backUrl, time: time, needFacePic: needFacePic), region: region, logger: logger, on: eventLoop)
    }
}
