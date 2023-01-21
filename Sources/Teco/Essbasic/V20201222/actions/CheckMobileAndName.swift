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

extension Essbasic {
    /// CheckMobileAndName请求参数结构体
    public struct CheckMobileAndNameRequest: TCRequestModel {
        /// 调用方信息; 必选
        public let caller: Caller

        /// 手机号
        public let mobile: String

        /// 姓名
        public let name: String

        public init(caller: Caller, mobile: String, name: String) {
            self.caller = caller
            self.mobile = mobile
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case caller = "Caller"
            case mobile = "Mobile"
            case name = "Name"
        }
    }

    /// CheckMobileAndName返回参数结构体
    public struct CheckMobileAndNameResponse: TCResponseModel {
        /// 检测结果
        /// 计费结果码：
        ///   0:  验证结果一致
        ///   1:  手机号未实名
        ///   2:  姓名和手机号不一致
        ///   3:  信息不一致(手机号已实名,但姓名和身份证号与实名信息不一致)
        /// 不收费结果码:
        ///   101: 查无记录
        ///   102: 非法姓名(长度,格式等不正确)
        ///   103: 非法手机号(长度,格式等不正确)
        ///   104: 非法身份证号(长度,校验位等不正确)
        ///   105: 认证未通过
        ///   106: 验证平台异常
        public let result: Int64

        /// 结果描述; 未通过时必选
        public let description: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case description = "Description"
            case requestId = "RequestId"
        }
    }

    /// 手机号二要素核验
    ///
    /// 该接口为第三方平台向电子签平台验证手机号二要素
    @inlinable
    public func checkMobileAndName(_ input: CheckMobileAndNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckMobileAndNameResponse> {
        self.client.execute(action: "CheckMobileAndName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 手机号二要素核验
    ///
    /// 该接口为第三方平台向电子签平台验证手机号二要素
    @inlinable
    public func checkMobileAndName(_ input: CheckMobileAndNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckMobileAndNameResponse {
        try await self.client.execute(action: "CheckMobileAndName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 手机号二要素核验
    ///
    /// 该接口为第三方平台向电子签平台验证手机号二要素
    @inlinable
    public func checkMobileAndName(caller: Caller, mobile: String, name: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckMobileAndNameResponse> {
        self.checkMobileAndName(CheckMobileAndNameRequest(caller: caller, mobile: mobile, name: name), region: region, logger: logger, on: eventLoop)
    }

    /// 手机号二要素核验
    ///
    /// 该接口为第三方平台向电子签平台验证手机号二要素
    @inlinable
    public func checkMobileAndName(caller: Caller, mobile: String, name: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckMobileAndNameResponse {
        try await self.checkMobileAndName(CheckMobileAndNameRequest(caller: caller, mobile: mobile, name: name), region: region, logger: logger, on: eventLoop)
    }
}
