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
    /// ResetInstancesInternetMaxBandwidth请求参数结构体
    public struct ResetInstancesInternetMaxBandwidthRequest: TCRequestModel {
        /// 一个或多个待操作的实例ID。可通过[`DescribeInstances`](https://cloud.tencent.com/document/api/213/9388)接口返回值中的 `InstanceId` 获取。 每次请求批量实例的上限为100。当调整 `BANDWIDTH_PREPAID` 和 `BANDWIDTH_POSTPAID_BY_HOUR` 计费方式的带宽时，只支持一个实例。
        public let instanceIds: [String]

        /// 公网出带宽配置。不同机型带宽上限范围不一致，具体限制详见带宽限制对账表。暂时只支持 `InternetMaxBandwidthOut` 参数。
        public let internetAccessible: InternetAccessible

        /// 带宽生效的起始时间。格式：`YYYY-MM-DD`，例如：`2016-10-30`。起始时间不能早于当前时间。如果起始时间是今天则新设置的带宽立即生效。该参数只对包年包月带宽有效，其他模式带宽不支持该参数，否则接口会以相应错误码返回。
        public let startTime: String?

        /// 带宽生效的终止时间。格式： `YYYY-MM-DD` ，例如：`2016-10-30` 。新设置的带宽的有效期包含终止时间此日期。终止时间不能晚于包年包月实例的到期时间。实例的到期时间可通过 [`DescribeInstances`](https://cloud.tencent.com/document/api/213/9388)接口返回值中的`ExpiredTime`获取。该参数只对包年包月带宽有效，其他模式带宽不支持该参数，否则接口会以相应错误码返回。
        public let endTime: String?

        public init(instanceIds: [String], internetAccessible: InternetAccessible, startTime: String? = nil, endTime: String? = nil) {
            self.instanceIds = instanceIds
            self.internetAccessible = internetAccessible
            self.startTime = startTime
            self.endTime = endTime
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case internetAccessible = "InternetAccessible"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }

    /// ResetInstancesInternetMaxBandwidth返回参数结构体
    public struct ResetInstancesInternetMaxBandwidthResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 调整实例带宽上限
    ///
    /// 本接口 (ResetInstancesInternetMaxBandwidth) 用于调整实例公网带宽上限。
    ///
    /// * 不同机型带宽上限范围不一致，具体限制详见[公网带宽上限](https://cloud.tencent.com/document/product/213/12523)。
    /// * 对于 `BANDWIDTH_PREPAID` 计费方式的带宽，需要输入参数 `StartTime` 和 `EndTime` ，指定调整后的带宽的生效时间段。在这种场景下目前不支持调小带宽，会涉及扣费，请确保账户余额充足。可通过 [`DescribeAccountBalance`](https://cloud.tencent.com/document/product/555/20253) 接口查询账户余额。
    /// * 对于 `TRAFFIC_POSTPAID_BY_HOUR` 、 `BANDWIDTH_POSTPAID_BY_HOUR` 和 `BANDWIDTH_PACKAGE` 计费方式的带宽，使用该接口调整带宽上限是实时生效的，可以在带宽允许的范围内调大或者调小带宽，不支持输入参数 `StartTime` 和 `EndTime` 。
    /// * 接口不支持调整 `BANDWIDTH_POSTPAID_BY_MONTH` 计费方式的带宽。
    /// * 接口不支持批量调整 `BANDWIDTH_PREPAID` 和 `BANDWIDTH_POSTPAID_BY_HOUR` 计费方式的带宽。
    /// * 接口不支持批量调整混合计费方式的带宽。例如不支持同时调整 `TRAFFIC_POSTPAID_BY_HOUR` 和 `BANDWIDTH_PACKAGE` 计费方式的带宽。
    /// * 实例操作结果可以通过调用 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728#.E7.A4.BA.E4.BE.8B3-.E6.9F.A5.E8.AF.A2.E5.AE.9E.E4.BE.8B.E7.9A.84.E6.9C.80.E6.96.B0.E6.93.8D.E4.BD.9C.E6.83.85.E5.86.B5) 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表操作成功。
    @inlinable @discardableResult
    public func resetInstancesInternetMaxBandwidth(_ input: ResetInstancesInternetMaxBandwidthRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetInstancesInternetMaxBandwidthResponse> {
        self.client.execute(action: "ResetInstancesInternetMaxBandwidth", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 调整实例带宽上限
    ///
    /// 本接口 (ResetInstancesInternetMaxBandwidth) 用于调整实例公网带宽上限。
    ///
    /// * 不同机型带宽上限范围不一致，具体限制详见[公网带宽上限](https://cloud.tencent.com/document/product/213/12523)。
    /// * 对于 `BANDWIDTH_PREPAID` 计费方式的带宽，需要输入参数 `StartTime` 和 `EndTime` ，指定调整后的带宽的生效时间段。在这种场景下目前不支持调小带宽，会涉及扣费，请确保账户余额充足。可通过 [`DescribeAccountBalance`](https://cloud.tencent.com/document/product/555/20253) 接口查询账户余额。
    /// * 对于 `TRAFFIC_POSTPAID_BY_HOUR` 、 `BANDWIDTH_POSTPAID_BY_HOUR` 和 `BANDWIDTH_PACKAGE` 计费方式的带宽，使用该接口调整带宽上限是实时生效的，可以在带宽允许的范围内调大或者调小带宽，不支持输入参数 `StartTime` 和 `EndTime` 。
    /// * 接口不支持调整 `BANDWIDTH_POSTPAID_BY_MONTH` 计费方式的带宽。
    /// * 接口不支持批量调整 `BANDWIDTH_PREPAID` 和 `BANDWIDTH_POSTPAID_BY_HOUR` 计费方式的带宽。
    /// * 接口不支持批量调整混合计费方式的带宽。例如不支持同时调整 `TRAFFIC_POSTPAID_BY_HOUR` 和 `BANDWIDTH_PACKAGE` 计费方式的带宽。
    /// * 实例操作结果可以通过调用 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728#.E7.A4.BA.E4.BE.8B3-.E6.9F.A5.E8.AF.A2.E5.AE.9E.E4.BE.8B.E7.9A.84.E6.9C.80.E6.96.B0.E6.93.8D.E4.BD.9C.E6.83.85.E5.86.B5) 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表操作成功。
    @inlinable @discardableResult
    public func resetInstancesInternetMaxBandwidth(_ input: ResetInstancesInternetMaxBandwidthRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetInstancesInternetMaxBandwidthResponse {
        try await self.client.execute(action: "ResetInstancesInternetMaxBandwidth", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 调整实例带宽上限
    ///
    /// 本接口 (ResetInstancesInternetMaxBandwidth) 用于调整实例公网带宽上限。
    ///
    /// * 不同机型带宽上限范围不一致，具体限制详见[公网带宽上限](https://cloud.tencent.com/document/product/213/12523)。
    /// * 对于 `BANDWIDTH_PREPAID` 计费方式的带宽，需要输入参数 `StartTime` 和 `EndTime` ，指定调整后的带宽的生效时间段。在这种场景下目前不支持调小带宽，会涉及扣费，请确保账户余额充足。可通过 [`DescribeAccountBalance`](https://cloud.tencent.com/document/product/555/20253) 接口查询账户余额。
    /// * 对于 `TRAFFIC_POSTPAID_BY_HOUR` 、 `BANDWIDTH_POSTPAID_BY_HOUR` 和 `BANDWIDTH_PACKAGE` 计费方式的带宽，使用该接口调整带宽上限是实时生效的，可以在带宽允许的范围内调大或者调小带宽，不支持输入参数 `StartTime` 和 `EndTime` 。
    /// * 接口不支持调整 `BANDWIDTH_POSTPAID_BY_MONTH` 计费方式的带宽。
    /// * 接口不支持批量调整 `BANDWIDTH_PREPAID` 和 `BANDWIDTH_POSTPAID_BY_HOUR` 计费方式的带宽。
    /// * 接口不支持批量调整混合计费方式的带宽。例如不支持同时调整 `TRAFFIC_POSTPAID_BY_HOUR` 和 `BANDWIDTH_PACKAGE` 计费方式的带宽。
    /// * 实例操作结果可以通过调用 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728#.E7.A4.BA.E4.BE.8B3-.E6.9F.A5.E8.AF.A2.E5.AE.9E.E4.BE.8B.E7.9A.84.E6.9C.80.E6.96.B0.E6.93.8D.E4.BD.9C.E6.83.85.E5.86.B5) 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表操作成功。
    @inlinable @discardableResult
    public func resetInstancesInternetMaxBandwidth(instanceIds: [String], internetAccessible: InternetAccessible, startTime: String? = nil, endTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetInstancesInternetMaxBandwidthResponse> {
        self.resetInstancesInternetMaxBandwidth(.init(instanceIds: instanceIds, internetAccessible: internetAccessible, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 调整实例带宽上限
    ///
    /// 本接口 (ResetInstancesInternetMaxBandwidth) 用于调整实例公网带宽上限。
    ///
    /// * 不同机型带宽上限范围不一致，具体限制详见[公网带宽上限](https://cloud.tencent.com/document/product/213/12523)。
    /// * 对于 `BANDWIDTH_PREPAID` 计费方式的带宽，需要输入参数 `StartTime` 和 `EndTime` ，指定调整后的带宽的生效时间段。在这种场景下目前不支持调小带宽，会涉及扣费，请确保账户余额充足。可通过 [`DescribeAccountBalance`](https://cloud.tencent.com/document/product/555/20253) 接口查询账户余额。
    /// * 对于 `TRAFFIC_POSTPAID_BY_HOUR` 、 `BANDWIDTH_POSTPAID_BY_HOUR` 和 `BANDWIDTH_PACKAGE` 计费方式的带宽，使用该接口调整带宽上限是实时生效的，可以在带宽允许的范围内调大或者调小带宽，不支持输入参数 `StartTime` 和 `EndTime` 。
    /// * 接口不支持调整 `BANDWIDTH_POSTPAID_BY_MONTH` 计费方式的带宽。
    /// * 接口不支持批量调整 `BANDWIDTH_PREPAID` 和 `BANDWIDTH_POSTPAID_BY_HOUR` 计费方式的带宽。
    /// * 接口不支持批量调整混合计费方式的带宽。例如不支持同时调整 `TRAFFIC_POSTPAID_BY_HOUR` 和 `BANDWIDTH_PACKAGE` 计费方式的带宽。
    /// * 实例操作结果可以通过调用 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728#.E7.A4.BA.E4.BE.8B3-.E6.9F.A5.E8.AF.A2.E5.AE.9E.E4.BE.8B.E7.9A.84.E6.9C.80.E6.96.B0.E6.93.8D.E4.BD.9C.E6.83.85.E5.86.B5) 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表操作成功。
    @inlinable @discardableResult
    public func resetInstancesInternetMaxBandwidth(instanceIds: [String], internetAccessible: InternetAccessible, startTime: String? = nil, endTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetInstancesInternetMaxBandwidthResponse {
        try await self.resetInstancesInternetMaxBandwidth(.init(instanceIds: instanceIds, internetAccessible: internetAccessible, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }
}
