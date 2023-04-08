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

extension Dayu {
    /// ModifyElasticLimit请求参数结构体
    public struct ModifyElasticLimitRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        public let business: String

        /// 资源ID
        public let id: String

        /// 弹性防护阈值，取值[0 10000 20000 30000 40000 50000 60000 70000 80000 90000 100000 120000 150000 200000 250000 300000 400000 600000 800000 220000 310000 110000 270000 610000]
        public let limit: UInt64

        public init(business: String, id: String, limit: UInt64) {
            self.business = business
            self.id = id
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case limit = "Limit"
        }
    }

    /// ModifyElasticLimit返回参数结构体
    public struct ModifyElasticLimitResponse: TCResponseModel {
        /// 成功码
        public let success: SuccessCode

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case success = "Success"
            case requestId = "RequestId"
        }
    }

    /// 修改弹性防护阈值
    @inlinable
    public func modifyElasticLimit(_ input: ModifyElasticLimitRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyElasticLimitResponse> {
        self.client.execute(action: "ModifyElasticLimit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改弹性防护阈值
    @inlinable
    public func modifyElasticLimit(_ input: ModifyElasticLimitRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyElasticLimitResponse {
        try await self.client.execute(action: "ModifyElasticLimit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改弹性防护阈值
    @inlinable
    public func modifyElasticLimit(business: String, id: String, limit: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyElasticLimitResponse> {
        self.modifyElasticLimit(.init(business: business, id: id, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 修改弹性防护阈值
    @inlinable
    public func modifyElasticLimit(business: String, id: String, limit: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyElasticLimitResponse {
        try await self.modifyElasticLimit(.init(business: business, id: id, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
