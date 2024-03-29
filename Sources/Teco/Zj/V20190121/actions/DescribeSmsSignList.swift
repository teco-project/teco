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

extension Zj {
    /// DescribeSmsSignList请求参数结构体
    public struct DescribeSmsSignListRequest: TCRequest {
        /// 商户证书
        public let license: String

        /// 签名ID数组
        public let signIdSet: [UInt64]

        /// 是否国际/港澳台短信：
        /// 0：表示国内短信。
        /// 1：表示国际/港澳台短信。
        public let international: UInt64

        public init(license: String, signIdSet: [UInt64], international: UInt64) {
            self.license = license
            self.signIdSet = signIdSet
            self.international = international
        }

        enum CodingKeys: String, CodingKey {
            case license = "License"
            case signIdSet = "SignIdSet"
            case international = "International"
        }
    }

    /// DescribeSmsSignList返回参数结构体
    public struct DescribeSmsSignListResponse: TCResponse {
        /// 返回数据
        public let data: [DescribeSmsSignListDataStruct]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 短信签名查询接口
    ///
    /// 获取普通短信签名信息
    @inlinable
    public func describeSmsSignList(_ input: DescribeSmsSignListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSmsSignListResponse> {
        self.client.execute(action: "DescribeSmsSignList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 短信签名查询接口
    ///
    /// 获取普通短信签名信息
    @inlinable
    public func describeSmsSignList(_ input: DescribeSmsSignListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSmsSignListResponse {
        try await self.client.execute(action: "DescribeSmsSignList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 短信签名查询接口
    ///
    /// 获取普通短信签名信息
    @inlinable
    public func describeSmsSignList(license: String, signIdSet: [UInt64], international: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSmsSignListResponse> {
        self.describeSmsSignList(.init(license: license, signIdSet: signIdSet, international: international), region: region, logger: logger, on: eventLoop)
    }

    /// 短信签名查询接口
    ///
    /// 获取普通短信签名信息
    @inlinable
    public func describeSmsSignList(license: String, signIdSet: [UInt64], international: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSmsSignListResponse {
        try await self.describeSmsSignList(.init(license: license, signIdSet: signIdSet, international: international), region: region, logger: logger, on: eventLoop)
    }
}
