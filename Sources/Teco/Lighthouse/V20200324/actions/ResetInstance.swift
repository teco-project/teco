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
    /// 重装系统
    ///
    /// 本接口（ResetInstance）用于重装指定实例上的镜像。
    /// * 如果指定了 BlueprintId 参数，则使用指定的镜像重装；否则按照当前实例使用的镜像进行重装。
    /// * 系统盘将会被格式化，并重置；请确保系统盘中无重要文件。
    /// * 目前不支持实例使用该接口实现 LINUX_UNIX 和 WINDOWS 操作系统切换。
    /// * 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态（LatestOperationState）为“SUCCESS”，则代表操作成功。
    @inlinable
    public func resetInstance(_ input: ResetInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ResetInstanceResponse > {
        self.client.execute(action: "ResetInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 重装系统
    ///
    /// 本接口（ResetInstance）用于重装指定实例上的镜像。
    /// * 如果指定了 BlueprintId 参数，则使用指定的镜像重装；否则按照当前实例使用的镜像进行重装。
    /// * 系统盘将会被格式化，并重置；请确保系统盘中无重要文件。
    /// * 目前不支持实例使用该接口实现 LINUX_UNIX 和 WINDOWS 操作系统切换。
    /// * 本接口为异步接口，请求发送成功后会返回一个 RequestId，此时操作并未立即完成。实例操作结果可以通过调用 DescribeInstances 接口查询，如果实例的最新操作状态（LatestOperationState）为“SUCCESS”，则代表操作成功。
    @inlinable
    public func resetInstance(_ input: ResetInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetInstanceResponse {
        try await self.client.execute(action: "ResetInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ResetInstance请求参数结构体
    public struct ResetInstanceRequest: TCRequestModel {
        /// 实例 ID。可通过[DescribeInstances](https://cloud.tencent.com/document/api/1207/47573)接口返回值中的InstanceId获取。
        public let instanceId: String
        
        /// 镜像 ID。可通过[DescribeBlueprints](https://cloud.tencent.com/document/product/1207/47689)接口返回值中的BlueprintId获取。
        public let blueprintId: String?
        
        public init (instanceId: String, blueprintId: String?) {
            self.instanceId = instanceId
            self.blueprintId = blueprintId
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case blueprintId = "BlueprintId"
        }
    }
    
    /// ResetInstance返回参数结构体
    public struct ResetInstanceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
