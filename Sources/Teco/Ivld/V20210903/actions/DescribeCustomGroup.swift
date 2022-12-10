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

extension Ivld {
    /// 描述自定义人物库
    ///
    /// 描述自定义人物库信息，当前库大小(库中有多少人脸)，以及库中的存储桶
    @inlinable
    public func describeCustomGroup(_ input: DescribeCustomGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeCustomGroupResponse > {
        self.client.execute(action: "DescribeCustomGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 描述自定义人物库
    ///
    /// 描述自定义人物库信息，当前库大小(库中有多少人脸)，以及库中的存储桶
    @inlinable
    public func describeCustomGroup(_ input: DescribeCustomGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCustomGroupResponse {
        try await self.client.execute(action: "DescribeCustomGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeCustomGroup请求参数结构体
    public struct DescribeCustomGroupRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribeCustomGroup返回参数结构体
    public struct DescribeCustomGroupResponse: TCResponseModel {
        /// 自定义人物库所包含的人物个数
        public let groupSize: Int64
        
        /// 自定义人物库图片后续所在的存储桶
        public let bucket: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case groupSize = "GroupSize"
            case bucket = "Bucket"
            case requestId = "RequestId"
        }
    }
}
