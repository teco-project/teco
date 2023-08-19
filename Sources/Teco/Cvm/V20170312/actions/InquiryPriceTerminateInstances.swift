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

extension Cvm {
    /// InquiryPriceTerminateInstances请求参数结构体
    public struct InquiryPriceTerminateInstancesRequest: TCRequest {
        /// 一个或多个待操作的实例ID。可通过[`DescribeInstances`](https://cloud.tencent.com/document/api/213/15728)接口返回值中的`InstanceId`获取。每次请求批量实例的上限为100。
        public let instanceIds: [String]

        public init(instanceIds: [String]) {
            self.instanceIds = instanceIds
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
        }
    }

    /// InquiryPriceTerminateInstances返回参数结构体
    public struct InquiryPriceTerminateInstancesResponse: TCResponse {
        /// 退款详情。
        public let instanceRefundsSet: [InstanceRefund]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceRefundsSet = "InstanceRefundsSet"
            case requestId = "RequestId"
        }
    }

    /// 退还实例询价
    ///
    /// 本接口 (InquiryPriceTerminateInstances) 用于退还实例询价。
    ///
    /// * 查询退还实例可以返还的费用。
    /// * 在退还包年包月实例时，使用ReleasePrepaidDataDisks参数，会在返回值中包含退还挂载的包年包月数据盘返还的费用。
    /// * 支持批量操作，每次请求批量实例的上限为100。如果批量实例存在不允许操作的实例，操作会以特定错误码返回。
    @inlinable
    public func inquiryPriceTerminateInstances(_ input: InquiryPriceTerminateInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquiryPriceTerminateInstancesResponse> {
        self.client.execute(action: "InquiryPriceTerminateInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 退还实例询价
    ///
    /// 本接口 (InquiryPriceTerminateInstances) 用于退还实例询价。
    ///
    /// * 查询退还实例可以返还的费用。
    /// * 在退还包年包月实例时，使用ReleasePrepaidDataDisks参数，会在返回值中包含退还挂载的包年包月数据盘返还的费用。
    /// * 支持批量操作，每次请求批量实例的上限为100。如果批量实例存在不允许操作的实例，操作会以特定错误码返回。
    @inlinable
    public func inquiryPriceTerminateInstances(_ input: InquiryPriceTerminateInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceTerminateInstancesResponse {
        try await self.client.execute(action: "InquiryPriceTerminateInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 退还实例询价
    ///
    /// 本接口 (InquiryPriceTerminateInstances) 用于退还实例询价。
    ///
    /// * 查询退还实例可以返还的费用。
    /// * 在退还包年包月实例时，使用ReleasePrepaidDataDisks参数，会在返回值中包含退还挂载的包年包月数据盘返还的费用。
    /// * 支持批量操作，每次请求批量实例的上限为100。如果批量实例存在不允许操作的实例，操作会以特定错误码返回。
    @inlinable
    public func inquiryPriceTerminateInstances(instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquiryPriceTerminateInstancesResponse> {
        self.inquiryPriceTerminateInstances(.init(instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }

    /// 退还实例询价
    ///
    /// 本接口 (InquiryPriceTerminateInstances) 用于退还实例询价。
    ///
    /// * 查询退还实例可以返还的费用。
    /// * 在退还包年包月实例时，使用ReleasePrepaidDataDisks参数，会在返回值中包含退还挂载的包年包月数据盘返还的费用。
    /// * 支持批量操作，每次请求批量实例的上限为100。如果批量实例存在不允许操作的实例，操作会以特定错误码返回。
    @inlinable
    public func inquiryPriceTerminateInstances(instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceTerminateInstancesResponse {
        try await self.inquiryPriceTerminateInstances(.init(instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }
}
