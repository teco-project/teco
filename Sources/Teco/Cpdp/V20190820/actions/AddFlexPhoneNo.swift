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
    /// AddFlexPhoneNo请求参数结构体
    public struct AddFlexPhoneNoRequest: TCRequest {
        /// 手机号
        public let phoneNo: String

        /// 收款用户ID
        public let payeeId: String

        /// 环境类型
        /// __release__:生产环境
        /// __sandbox__:沙箱环境
        /// __test__:测试环境
        /// 缺省默认为生产环境
        public let environment: String?

        public init(phoneNo: String, payeeId: String, environment: String? = nil) {
            self.phoneNo = phoneNo
            self.payeeId = payeeId
            self.environment = environment
        }

        enum CodingKeys: String, CodingKey {
            case phoneNo = "PhoneNo"
            case payeeId = "PayeeId"
            case environment = "Environment"
        }
    }

    /// AddFlexPhoneNo返回参数结构体
    public struct AddFlexPhoneNoResponse: TCResponse {
        /// 错误码。SUCCESS为成功，其他为失败
        public let errCode: String

        /// 错误消息
        public let errMessage: String

        /// 无
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 灵云V2-补充手机号信息
    @inlinable
    public func addFlexPhoneNo(_ input: AddFlexPhoneNoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddFlexPhoneNoResponse> {
        self.client.execute(action: "AddFlexPhoneNo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 灵云V2-补充手机号信息
    @inlinable
    public func addFlexPhoneNo(_ input: AddFlexPhoneNoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddFlexPhoneNoResponse {
        try await self.client.execute(action: "AddFlexPhoneNo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 灵云V2-补充手机号信息
    @inlinable
    public func addFlexPhoneNo(phoneNo: String, payeeId: String, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddFlexPhoneNoResponse> {
        self.addFlexPhoneNo(.init(phoneNo: phoneNo, payeeId: payeeId, environment: environment), region: region, logger: logger, on: eventLoop)
    }

    /// 灵云V2-补充手机号信息
    @inlinable
    public func addFlexPhoneNo(phoneNo: String, payeeId: String, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddFlexPhoneNoResponse {
        try await self.addFlexPhoneNo(.init(phoneNo: phoneNo, payeeId: payeeId, environment: environment), region: region, logger: logger, on: eventLoop)
    }
}
