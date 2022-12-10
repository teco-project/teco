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

extension Lighthouse {
    /// 启动实例
    ///
    /// 本接口（StartInstances）用于启动一个或多个实例。
    /// * 只有状态为 STOPPED 的实例才可以进行此操作。
    /// * 接口调用成功时，实例会进入 STARTING 状态；启动实例成功时，实例会进入 RUNNING 状态。
    /// * 支持批量操作。每次请求批量实例的上限为 100。
    /// * 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态（LatestOperationState）为“SUCCESS”，则代表操作成功。
    @inlinable
    public func startInstances(_ input: StartInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < StartInstancesResponse > {
        self.client.execute(action: "StartInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 启动实例
    ///
    /// 本接口（StartInstances）用于启动一个或多个实例。
    /// * 只有状态为 STOPPED 的实例才可以进行此操作。
    /// * 接口调用成功时，实例会进入 STARTING 状态；启动实例成功时，实例会进入 RUNNING 状态。
    /// * 支持批量操作。每次请求批量实例的上限为 100。
    /// * 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态（LatestOperationState）为“SUCCESS”，则代表操作成功。
    @inlinable
    public func startInstances(_ input: StartInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartInstancesResponse {
        try await self.client.execute(action: "StartInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// StartInstances请求参数结构体
    public struct StartInstancesRequest: TCRequestModel {
        /// 实例 ID 列表。每次请求批量实例的上限为 100。可通过[DescribeInstances](https://cloud.tencent.com/document/api/1207/47573)接口返回值中的InstanceId获取。
        public let instanceIds: [String]
        
        public init (instanceIds: [String]) {
            self.instanceIds = instanceIds
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
        }
    }
    
    /// StartInstances返回参数结构体
    public struct StartInstancesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
