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

extension Tione {
    /// DescribeBillingSpecs请求参数结构体
    public struct DescribeBillingSpecsRequest: TCRequestModel {
        /// 枚举值：TRAIN、NOTEBOOK、INFERENCE
        public let taskType: String

        /// 付费模式：POSTPAID_BY_HOUR后付费、PREPAID预付费
        public let chargeType: String

        /// 资源类型：CALC 计算资源、CPU CPU资源、GPU GPU资源、CBS云硬盘
        public let resourceType: String?

        public init(taskType: String, chargeType: String, resourceType: String? = nil) {
            self.taskType = taskType
            self.chargeType = chargeType
            self.resourceType = resourceType
        }

        enum CodingKeys: String, CodingKey {
            case taskType = "TaskType"
            case chargeType = "ChargeType"
            case resourceType = "ResourceType"
        }
    }

    /// DescribeBillingSpecs返回参数结构体
    public struct DescribeBillingSpecsResponse: TCResponseModel {
        /// 计费项列表
        public let specs: [Spec]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case specs = "Specs"
            case requestId = "RequestId"
        }
    }

    /// 查询计费项列表
    ///
    /// 本接口(DescribeBillingSpecs)用于查询计费项列表
    @inlinable
    public func describeBillingSpecs(_ input: DescribeBillingSpecsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBillingSpecsResponse> {
        self.client.execute(action: "DescribeBillingSpecs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询计费项列表
    ///
    /// 本接口(DescribeBillingSpecs)用于查询计费项列表
    @inlinable
    public func describeBillingSpecs(_ input: DescribeBillingSpecsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBillingSpecsResponse {
        try await self.client.execute(action: "DescribeBillingSpecs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询计费项列表
    ///
    /// 本接口(DescribeBillingSpecs)用于查询计费项列表
    @inlinable
    public func describeBillingSpecs(taskType: String, chargeType: String, resourceType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBillingSpecsResponse> {
        let input = DescribeBillingSpecsRequest(taskType: taskType, chargeType: chargeType, resourceType: resourceType)
        return self.client.execute(action: "DescribeBillingSpecs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询计费项列表
    ///
    /// 本接口(DescribeBillingSpecs)用于查询计费项列表
    @inlinable
    public func describeBillingSpecs(taskType: String, chargeType: String, resourceType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBillingSpecsResponse {
        let input = DescribeBillingSpecsRequest(taskType: taskType, chargeType: chargeType, resourceType: resourceType)
        return try await self.client.execute(action: "DescribeBillingSpecs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
