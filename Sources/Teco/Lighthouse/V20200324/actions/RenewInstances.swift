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

extension Lighthouse {
    /// RenewInstances请求参数结构体
    public struct RenewInstancesRequest: TCRequestModel {
        /// 实例ID列表。一个或多个待操作的实例ID。可通过[DescribeInstances](https://cloud.tencent.com/document/api/1207/47573)接口返回值中的InstanceId获取。每次请求批量实例的上限为100。
        public let instanceIds: [String]

        /// 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。若指定实例的付费模式为预付费则该参数必传。
        public let instanceChargePrepaid: InstanceChargePrepaid

        /// 是否续费弹性数据盘。取值范围：
        /// TRUE：表示续费实例同时续费其挂载的数据盘
        /// FALSE：表示续费实例同时不再续费其挂载的数据盘
        /// 默认取值：TRUE。
        public let renewDataDisk: Bool?

        /// 是否自动抵扣代金券。取值范围：
        /// TRUE：表示自动抵扣代金券
        /// FALSE：表示不自动抵扣代金券
        /// 默认取值：FALSE。
        public let autoVoucher: Bool?

        public init(instanceIds: [String], instanceChargePrepaid: InstanceChargePrepaid, renewDataDisk: Bool? = nil, autoVoucher: Bool? = nil) {
            self.instanceIds = instanceIds
            self.instanceChargePrepaid = instanceChargePrepaid
            self.renewDataDisk = renewDataDisk
            self.autoVoucher = autoVoucher
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case instanceChargePrepaid = "InstanceChargePrepaid"
            case renewDataDisk = "RenewDataDisk"
            case autoVoucher = "AutoVoucher"
        }
    }

    /// RenewInstances返回参数结构体
    public struct RenewInstancesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 续费实例
    ///
    /// 本接口(RenewInstances)用于续费一个或多个轻量应用服务器实例。
    /// * 只有状态为 RUNNING，STOPPED 或 SHUTDOWN 的实例才可以进行此操作。
    /// * 支持批量操作。每次请求批量实例的上限为 100。
    /// * 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态（LatestOperationState）为“SUCCESS”，则代表操作成功。
    @inlinable @discardableResult
    public func renewInstances(_ input: RenewInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RenewInstancesResponse> {
        self.client.execute(action: "RenewInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 续费实例
    ///
    /// 本接口(RenewInstances)用于续费一个或多个轻量应用服务器实例。
    /// * 只有状态为 RUNNING，STOPPED 或 SHUTDOWN 的实例才可以进行此操作。
    /// * 支持批量操作。每次请求批量实例的上限为 100。
    /// * 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态（LatestOperationState）为“SUCCESS”，则代表操作成功。
    @inlinable @discardableResult
    public func renewInstances(_ input: RenewInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RenewInstancesResponse {
        try await self.client.execute(action: "RenewInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 续费实例
    ///
    /// 本接口(RenewInstances)用于续费一个或多个轻量应用服务器实例。
    /// * 只有状态为 RUNNING，STOPPED 或 SHUTDOWN 的实例才可以进行此操作。
    /// * 支持批量操作。每次请求批量实例的上限为 100。
    /// * 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态（LatestOperationState）为“SUCCESS”，则代表操作成功。
    @inlinable @discardableResult
    public func renewInstances(instanceIds: [String], instanceChargePrepaid: InstanceChargePrepaid, renewDataDisk: Bool? = nil, autoVoucher: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RenewInstancesResponse> {
        self.renewInstances(RenewInstancesRequest(instanceIds: instanceIds, instanceChargePrepaid: instanceChargePrepaid, renewDataDisk: renewDataDisk, autoVoucher: autoVoucher), region: region, logger: logger, on: eventLoop)
    }

    /// 续费实例
    ///
    /// 本接口(RenewInstances)用于续费一个或多个轻量应用服务器实例。
    /// * 只有状态为 RUNNING，STOPPED 或 SHUTDOWN 的实例才可以进行此操作。
    /// * 支持批量操作。每次请求批量实例的上限为 100。
    /// * 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态（LatestOperationState）为“SUCCESS”，则代表操作成功。
    @inlinable @discardableResult
    public func renewInstances(instanceIds: [String], instanceChargePrepaid: InstanceChargePrepaid, renewDataDisk: Bool? = nil, autoVoucher: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RenewInstancesResponse {
        try await self.renewInstances(RenewInstancesRequest(instanceIds: instanceIds, instanceChargePrepaid: instanceChargePrepaid, renewDataDisk: renewDataDisk, autoVoucher: autoVoucher), region: region, logger: logger, on: eventLoop)
    }
}
