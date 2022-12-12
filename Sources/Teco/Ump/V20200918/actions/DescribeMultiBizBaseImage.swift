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

extension Ump {
    /// DescribeMultiBizBaseImage请求参数结构体
    public struct DescribeMultiBizBaseImageRequest: TCRequestModel {
        /// 集团编码
        public let groupCode: String
        
        /// 广场ID
        public let mallId: UInt64
        
        /// 摄像头ID
        public let cameraId: UInt64
        
        /// 点位ID
        public let zoneId: UInt64
        
        public init (groupCode: String, mallId: UInt64, cameraId: UInt64, zoneId: UInt64) {
            self.groupCode = groupCode
            self.mallId = mallId
            self.cameraId = cameraId
            self.zoneId = zoneId
        }
        
        enum CodingKeys: String, CodingKey {
            case groupCode = "GroupCode"
            case mallId = "MallId"
            case cameraId = "CameraId"
            case zoneId = "ZoneId"
        }
    }
    
    /// DescribeMultiBizBaseImage返回参数结构体
    public struct DescribeMultiBizBaseImageResponse: TCResponseModel {
        /// cos 临时 url
        public let imageUrl: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case imageUrl = "ImageUrl"
            case requestId = "RequestId"
        }
    }
    
    /// 获取多经点位底图
    @inlinable
    public func describeMultiBizBaseImage(_ input: DescribeMultiBizBaseImageRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeMultiBizBaseImageResponse > {
        self.client.execute(action: "DescribeMultiBizBaseImage", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取多经点位底图
    @inlinable
    public func describeMultiBizBaseImage(_ input: DescribeMultiBizBaseImageRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMultiBizBaseImageResponse {
        try await self.client.execute(action: "DescribeMultiBizBaseImage", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
