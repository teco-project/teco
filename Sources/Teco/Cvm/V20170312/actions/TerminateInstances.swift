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

extension Cvm {
    /// TerminateInstances请求参数结构体
    public struct TerminateInstancesRequest: TCRequestModel {
        /// 一个或多个待操作的实例ID。可通过[`DescribeInstances`](https://cloud.tencent.com/document/api/213/15728)接口返回值中的`InstanceId`获取。每次请求批量实例的上限为100。
        public let instanceIds: [String]

        public init(instanceIds: [String]) {
            self.instanceIds = instanceIds
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
        }
    }

    /// TerminateInstances返回参数结构体
    public struct TerminateInstancesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 退还实例
    ///
    /// 本接口 (TerminateInstances) 用于主动退还实例。
    /// * 不再使用的实例，可通过本接口主动退还。
    /// * 按量计费的实例通过本接口可直接退还；包年包月实例如符合[退还规则](https://cloud.tencent.com/document/product/213/9711)，也可通过本接口主动退还。
    /// * 包年包月实例首次调用本接口，实例将被移至回收站，再次调用本接口，实例将被销毁，且不可恢复。按量计费实例调用本接口将被直接销毁。
    /// * 支持批量操作，每次请求批量实例的上限为100。
    /// * 批量操作时，所有实例的付费类型必须一致。
    @inlinable @discardableResult
    public func terminateInstances(_ input: TerminateInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TerminateInstancesResponse> {
        self.client.execute(action: "TerminateInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 退还实例
    ///
    /// 本接口 (TerminateInstances) 用于主动退还实例。
    /// * 不再使用的实例，可通过本接口主动退还。
    /// * 按量计费的实例通过本接口可直接退还；包年包月实例如符合[退还规则](https://cloud.tencent.com/document/product/213/9711)，也可通过本接口主动退还。
    /// * 包年包月实例首次调用本接口，实例将被移至回收站，再次调用本接口，实例将被销毁，且不可恢复。按量计费实例调用本接口将被直接销毁。
    /// * 支持批量操作，每次请求批量实例的上限为100。
    /// * 批量操作时，所有实例的付费类型必须一致。
    @inlinable @discardableResult
    public func terminateInstances(_ input: TerminateInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TerminateInstancesResponse {
        try await self.client.execute(action: "TerminateInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 退还实例
    ///
    /// 本接口 (TerminateInstances) 用于主动退还实例。
    /// * 不再使用的实例，可通过本接口主动退还。
    /// * 按量计费的实例通过本接口可直接退还；包年包月实例如符合[退还规则](https://cloud.tencent.com/document/product/213/9711)，也可通过本接口主动退还。
    /// * 包年包月实例首次调用本接口，实例将被移至回收站，再次调用本接口，实例将被销毁，且不可恢复。按量计费实例调用本接口将被直接销毁。
    /// * 支持批量操作，每次请求批量实例的上限为100。
    /// * 批量操作时，所有实例的付费类型必须一致。
    @inlinable @discardableResult
    public func terminateInstances(instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TerminateInstancesResponse> {
        self.terminateInstances(TerminateInstancesRequest(instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }

    /// 退还实例
    ///
    /// 本接口 (TerminateInstances) 用于主动退还实例。
    /// * 不再使用的实例，可通过本接口主动退还。
    /// * 按量计费的实例通过本接口可直接退还；包年包月实例如符合[退还规则](https://cloud.tencent.com/document/product/213/9711)，也可通过本接口主动退还。
    /// * 包年包月实例首次调用本接口，实例将被移至回收站，再次调用本接口，实例将被销毁，且不可恢复。按量计费实例调用本接口将被直接销毁。
    /// * 支持批量操作，每次请求批量实例的上限为100。
    /// * 批量操作时，所有实例的付费类型必须一致。
    @inlinable @discardableResult
    public func terminateInstances(instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TerminateInstancesResponse {
        try await self.terminateInstances(TerminateInstancesRequest(instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }
}
