//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tcss {
    /// 查询正在一键扫描的镜像扫描taskid
    ///
    /// 查询正在一键扫描的镜像扫描taskid
    @inlinable
    public func describeAssetImageScanTask(_ input: DescribeAssetImageScanTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAssetImageScanTaskResponse > {
        self.client.execute(action: "DescribeAssetImageScanTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询正在一键扫描的镜像扫描taskid
    ///
    /// 查询正在一键扫描的镜像扫描taskid
    @inlinable
    public func describeAssetImageScanTask(_ input: DescribeAssetImageScanTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageScanTaskResponse {
        try await self.client.execute(action: "DescribeAssetImageScanTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeAssetImageScanTask请求参数结构体
    public struct DescribeAssetImageScanTaskRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribeAssetImageScanTask返回参数结构体
    public struct DescribeAssetImageScanTaskResponse: TCResponseModel {
        /// 任务id
        public let taskID: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case taskID = "TaskID"
            case requestId = "RequestId"
        }
    }
}