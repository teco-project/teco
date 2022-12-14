//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// DescribeInstancesOperationLimit请求参数结构体
    public struct DescribeInstancesOperationLimitRequest: TCRequestModel {
        /// 按照一个或者多个实例ID查询，可通过[DescribeInstances](https://cloud.tencent.com/document/api/213/15728)API返回值中的InstanceId获取。实例ID形如：ins-xxxxxxxx。（此参数的具体格式可参考API[简介](https://cloud.tencent.com/document/api/213/15688)的ids.N一节）。每次请求的实例的上限为100。
        public let instanceIds: [String]

        /// 实例操作。
        /// <li> INSTANCE_DEGRADE：实例降配操作</li>
        public let operation: String

        public init(instanceIds: [String], operation: String) {
            self.instanceIds = instanceIds
            self.operation = operation
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case operation = "Operation"
        }
    }

    /// DescribeInstancesOperationLimit返回参数结构体
    public struct DescribeInstancesOperationLimitResponse: TCResponseModel {
        /// 该参数表示调整配置操作（降配）限制次数查询。
        public let instanceOperationLimitSet: [OperationCountLimit]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceOperationLimitSet = "InstanceOperationLimitSet"
            case requestId = "RequestId"
        }
    }

    /// 查询实例操作限制
    ///
    /// 本接口（DescribeInstancesOperationLimit）用于查询实例操作限制。
    /// * 目前支持调整配置操作限制次数查询。
    @inlinable
    public func describeInstancesOperationLimit(_ input: DescribeInstancesOperationLimitRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInstancesOperationLimitResponse > {
        self.client.execute(action: "DescribeInstancesOperationLimit", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例操作限制
    ///
    /// 本接口（DescribeInstancesOperationLimit）用于查询实例操作限制。
    /// * 目前支持调整配置操作限制次数查询。
    @inlinable
    public func describeInstancesOperationLimit(_ input: DescribeInstancesOperationLimitRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesOperationLimitResponse {
        try await self.client.execute(action: "DescribeInstancesOperationLimit", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例操作限制
    ///
    /// 本接口（DescribeInstancesOperationLimit）用于查询实例操作限制。
    /// * 目前支持调整配置操作限制次数查询。
    @inlinable
    public func describeInstancesOperationLimit(instanceIds: [String], operation: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInstancesOperationLimitResponse > {
        self.describeInstancesOperationLimit(DescribeInstancesOperationLimitRequest(instanceIds: instanceIds, operation: operation), logger: logger, on: eventLoop)
    }

    /// 查询实例操作限制
    ///
    /// 本接口（DescribeInstancesOperationLimit）用于查询实例操作限制。
    /// * 目前支持调整配置操作限制次数查询。
    @inlinable
    public func describeInstancesOperationLimit(instanceIds: [String], operation: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesOperationLimitResponse {
        try await self.describeInstancesOperationLimit(DescribeInstancesOperationLimitRequest(instanceIds: instanceIds, operation: operation), logger: logger, on: eventLoop)
    }
}
