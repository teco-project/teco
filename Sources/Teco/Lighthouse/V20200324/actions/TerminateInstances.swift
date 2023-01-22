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
    /// TerminateInstances请求参数结构体
    public struct TerminateInstancesRequest: TCRequestModel {
        /// 实例ID列表。可通过[DescribeInstances](https://cloud.tencent.com/document/api/1207/47573)接口返回值中的InstanceId获取。
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

    /// 销毁实例
    ///
    /// 本接口 (TerminateInstances) 用于销毁实例。
    ///
    /// * 处于 SHUTDOWN 状态的实例，可通过本接口销毁，且不可恢复。
    /// * 支持批量操作，每次请求批量实例的上限为100。
    /// * 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态 (LatestOperationState) 为“SUCCESS”，则代表操作成功。
    @inlinable @discardableResult
    public func terminateInstances(_ input: TerminateInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TerminateInstancesResponse> {
        self.client.execute(action: "TerminateInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 销毁实例
    ///
    /// 本接口 (TerminateInstances) 用于销毁实例。
    ///
    /// * 处于 SHUTDOWN 状态的实例，可通过本接口销毁，且不可恢复。
    /// * 支持批量操作，每次请求批量实例的上限为100。
    /// * 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态 (LatestOperationState) 为“SUCCESS”，则代表操作成功。
    @inlinable @discardableResult
    public func terminateInstances(_ input: TerminateInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TerminateInstancesResponse {
        try await self.client.execute(action: "TerminateInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 销毁实例
    ///
    /// 本接口 (TerminateInstances) 用于销毁实例。
    ///
    /// * 处于 SHUTDOWN 状态的实例，可通过本接口销毁，且不可恢复。
    /// * 支持批量操作，每次请求批量实例的上限为100。
    /// * 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态 (LatestOperationState) 为“SUCCESS”，则代表操作成功。
    @inlinable @discardableResult
    public func terminateInstances(instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TerminateInstancesResponse> {
        self.terminateInstances(TerminateInstancesRequest(instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }

    /// 销毁实例
    ///
    /// 本接口 (TerminateInstances) 用于销毁实例。
    ///
    /// * 处于 SHUTDOWN 状态的实例，可通过本接口销毁，且不可恢复。
    /// * 支持批量操作，每次请求批量实例的上限为100。
    /// * 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态 (LatestOperationState) 为“SUCCESS”，则代表操作成功。
    @inlinable @discardableResult
    public func terminateInstances(instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TerminateInstancesResponse {
        try await self.terminateInstances(TerminateInstancesRequest(instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }
}
