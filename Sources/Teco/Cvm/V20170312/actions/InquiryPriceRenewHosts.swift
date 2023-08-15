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
    /// InquiryPriceRenewHosts请求参数结构体
    public struct InquiryPriceRenewHostsRequest: TCRequestModel {
        /// 一个或多个待操作的`CDH`实例`ID`。可通过[`DescribeHosts`](https://cloud.tencent.com/document/api/213/16474)接口返回值中的`HostId`获取。每次请求批量实例的上限为100。
        public let hostIds: [String]

        /// 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的续费时长、是否设置自动续费等属性。
        public let hostChargePrepaid: ChargePrepaid

        /// 试运行，测试使用，不执行具体逻辑。取值范围：
        ///
        /// - TRUE：跳过执行逻辑
        /// - FALSE：执行逻辑
        ///
        /// 默认取值：FALSE。
        public let dryRun: Bool?

        public init(hostIds: [String], hostChargePrepaid: ChargePrepaid, dryRun: Bool? = nil) {
            self.hostIds = hostIds
            self.hostChargePrepaid = hostChargePrepaid
            self.dryRun = dryRun
        }

        enum CodingKeys: String, CodingKey {
            case hostIds = "HostIds"
            case hostChargePrepaid = "HostChargePrepaid"
            case dryRun = "DryRun"
        }
    }

    /// InquiryPriceRenewHosts返回参数结构体
    public struct InquiryPriceRenewHostsResponse: TCResponseModel {
        /// CDH实例续费价格信息
        public let price: HostPriceInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case price = "Price"
            case requestId = "RequestId"
        }
    }

    /// 续费CDH实例询价
    ///
    /// 本接口 (InquiryPriceRenewHosts) 用于续费包年包月`CDH`实例询价。
    /// * 只支持查询包年包月`CDH`实例的续费价格。
    @inlinable
    public func inquiryPriceRenewHosts(_ input: InquiryPriceRenewHostsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquiryPriceRenewHostsResponse> {
        self.client.execute(action: "InquiryPriceRenewHosts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 续费CDH实例询价
    ///
    /// 本接口 (InquiryPriceRenewHosts) 用于续费包年包月`CDH`实例询价。
    /// * 只支持查询包年包月`CDH`实例的续费价格。
    @inlinable
    public func inquiryPriceRenewHosts(_ input: InquiryPriceRenewHostsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceRenewHostsResponse {
        try await self.client.execute(action: "InquiryPriceRenewHosts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 续费CDH实例询价
    ///
    /// 本接口 (InquiryPriceRenewHosts) 用于续费包年包月`CDH`实例询价。
    /// * 只支持查询包年包月`CDH`实例的续费价格。
    @inlinable
    public func inquiryPriceRenewHosts(hostIds: [String], hostChargePrepaid: ChargePrepaid, dryRun: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquiryPriceRenewHostsResponse> {
        self.inquiryPriceRenewHosts(.init(hostIds: hostIds, hostChargePrepaid: hostChargePrepaid, dryRun: dryRun), region: region, logger: logger, on: eventLoop)
    }

    /// 续费CDH实例询价
    ///
    /// 本接口 (InquiryPriceRenewHosts) 用于续费包年包月`CDH`实例询价。
    /// * 只支持查询包年包月`CDH`实例的续费价格。
    @inlinable
    public func inquiryPriceRenewHosts(hostIds: [String], hostChargePrepaid: ChargePrepaid, dryRun: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceRenewHostsResponse {
        try await self.inquiryPriceRenewHosts(.init(hostIds: hostIds, hostChargePrepaid: hostChargePrepaid, dryRun: dryRun), region: region, logger: logger, on: eventLoop)
    }
}
