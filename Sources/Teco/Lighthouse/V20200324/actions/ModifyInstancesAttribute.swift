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
    /// ModifyInstancesAttribute请求参数结构体
    public struct ModifyInstancesAttributeRequest: TCRequestModel {
        /// 实例 ID 列表。每次请求批量实例的上限为 100。可通过[DescribeInstances](https://cloud.tencent.com/document/api/1207/47573)接口返回值中的InstanceId获取。
        public let instanceIds: [String]

        /// 实例名称。可任意命名，但不得超过 60 个字符。
        public let instanceName: String?

        public init(instanceIds: [String], instanceName: String? = nil) {
            self.instanceIds = instanceIds
            self.instanceName = instanceName
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case instanceName = "InstanceName"
        }
    }

    /// ModifyInstancesAttribute返回参数结构体
    public struct ModifyInstancesAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改实例的属性
    ///
    /// 本接口（ModifyInstancesAttribute）用于修改实例的属性。
    /// * “实例名称”仅为方便用户自己管理之用。
    /// * 支持批量操作。每次请求批量实例的上限为 100。
    /// * 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态（LatestOperationState）为“SUCCESS”，则代表操作成功。
    @inlinable @discardableResult
    public func modifyInstancesAttribute(_ input: ModifyInstancesAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyInstancesAttributeResponse> {
        self.client.execute(action: "ModifyInstancesAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改实例的属性
    ///
    /// 本接口（ModifyInstancesAttribute）用于修改实例的属性。
    /// * “实例名称”仅为方便用户自己管理之用。
    /// * 支持批量操作。每次请求批量实例的上限为 100。
    /// * 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态（LatestOperationState）为“SUCCESS”，则代表操作成功。
    @inlinable @discardableResult
    public func modifyInstancesAttribute(_ input: ModifyInstancesAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInstancesAttributeResponse {
        try await self.client.execute(action: "ModifyInstancesAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改实例的属性
    ///
    /// 本接口（ModifyInstancesAttribute）用于修改实例的属性。
    /// * “实例名称”仅为方便用户自己管理之用。
    /// * 支持批量操作。每次请求批量实例的上限为 100。
    /// * 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态（LatestOperationState）为“SUCCESS”，则代表操作成功。
    @inlinable @discardableResult
    public func modifyInstancesAttribute(instanceIds: [String], instanceName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyInstancesAttributeResponse> {
        self.modifyInstancesAttribute(.init(instanceIds: instanceIds, instanceName: instanceName), region: region, logger: logger, on: eventLoop)
    }

    /// 修改实例的属性
    ///
    /// 本接口（ModifyInstancesAttribute）用于修改实例的属性。
    /// * “实例名称”仅为方便用户自己管理之用。
    /// * 支持批量操作。每次请求批量实例的上限为 100。
    /// * 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态（LatestOperationState）为“SUCCESS”，则代表操作成功。
    @inlinable @discardableResult
    public func modifyInstancesAttribute(instanceIds: [String], instanceName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInstancesAttributeResponse {
        try await self.modifyInstancesAttribute(.init(instanceIds: instanceIds, instanceName: instanceName), region: region, logger: logger, on: eventLoop)
    }
}
