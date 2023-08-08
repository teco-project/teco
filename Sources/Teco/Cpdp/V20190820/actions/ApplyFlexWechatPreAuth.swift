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

extension Cpdp {
    /// ApplyFlexWechatPreAuth请求参数结构体
    public struct ApplyFlexWechatPreAuthRequest: TCRequestModel {
        /// 商家核身单号
        public let authNo: String

        /// 微信用户标识
        public let openId: String

        /// 项目名称
        public let projectName: String

        /// 用工单位名称
        public let employerName: String

        /// 用户姓名
        public let userName: String

        /// 用户证件号
        public let idNo: String

        /// 用工类型
        /// LONG_TERM_EMPLOYMENT：长期用工，
        /// SHORT_TERM_EMPLOYMENT： 短期用工，
        /// COOPERATION_EMPLOYMENT：合作关系
        public let employmentType: String

        /// 核身类型
        /// SIGN_IN：考勤、签到打卡类型
        /// INSURANCE：投保类型
        /// CONTRACT：签约类型
        public let authType: String

        /// 环境类型
        /// test 测试
        /// release 生产
        /// sandbox 沙箱
        public let environment: String

        public init(authNo: String, openId: String, projectName: String, employerName: String, userName: String, idNo: String, employmentType: String, authType: String, environment: String) {
            self.authNo = authNo
            self.openId = openId
            self.projectName = projectName
            self.employerName = employerName
            self.userName = userName
            self.idNo = idNo
            self.employmentType = employmentType
            self.authType = authType
            self.environment = environment
        }

        enum CodingKeys: String, CodingKey {
            case authNo = "AuthNo"
            case openId = "OpenId"
            case projectName = "ProjectName"
            case employerName = "EmployerName"
            case userName = "UserName"
            case idNo = "IdNo"
            case employmentType = "EmploymentType"
            case authType = "AuthType"
            case environment = "Environment"
        }
    }

    /// ApplyFlexWechatPreAuth返回参数结构体
    public struct ApplyFlexWechatPreAuthResponse: TCResponseModel {
        /// 错误码。SUCCESS为成功，其他为失败
        public let errCode: String

        /// 错误信息
        public let errMessage: String

        /// 返回结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: WechatPreAuthResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 灵云V2-微工卡开通预核身接口
    ///
    /// 微工卡开通预核身接口
    @inlinable
    public func applyFlexWechatPreAuth(_ input: ApplyFlexWechatPreAuthRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyFlexWechatPreAuthResponse> {
        self.client.execute(action: "ApplyFlexWechatPreAuth", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 灵云V2-微工卡开通预核身接口
    ///
    /// 微工卡开通预核身接口
    @inlinable
    public func applyFlexWechatPreAuth(_ input: ApplyFlexWechatPreAuthRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyFlexWechatPreAuthResponse {
        try await self.client.execute(action: "ApplyFlexWechatPreAuth", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 灵云V2-微工卡开通预核身接口
    ///
    /// 微工卡开通预核身接口
    @inlinable
    public func applyFlexWechatPreAuth(authNo: String, openId: String, projectName: String, employerName: String, userName: String, idNo: String, employmentType: String, authType: String, environment: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyFlexWechatPreAuthResponse> {
        self.applyFlexWechatPreAuth(.init(authNo: authNo, openId: openId, projectName: projectName, employerName: employerName, userName: userName, idNo: idNo, employmentType: employmentType, authType: authType, environment: environment), region: region, logger: logger, on: eventLoop)
    }

    /// 灵云V2-微工卡开通预核身接口
    ///
    /// 微工卡开通预核身接口
    @inlinable
    public func applyFlexWechatPreAuth(authNo: String, openId: String, projectName: String, employerName: String, userName: String, idNo: String, employmentType: String, authType: String, environment: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyFlexWechatPreAuthResponse {
        try await self.applyFlexWechatPreAuth(.init(authNo: authNo, openId: openId, projectName: projectName, employerName: employerName, userName: userName, idNo: idNo, employmentType: employmentType, authType: authType, environment: environment), region: region, logger: logger, on: eventLoop)
    }
}
