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

extension Iotvideo {
    /// 获取设备图片流数据
    ///
    /// 获取设备图片流数据
    @inlinable
    public func describeCloudStorageStreamData(_ input: DescribeCloudStorageStreamDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeCloudStorageStreamDataResponse > {
        self.client.execute(action: "DescribeCloudStorageStreamData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取设备图片流数据
    ///
    /// 获取设备图片流数据
    @inlinable
    public func describeCloudStorageStreamData(_ input: DescribeCloudStorageStreamDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudStorageStreamDataResponse {
        try await self.client.execute(action: "DescribeCloudStorageStreamData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeCloudStorageStreamData请求参数结构体
    public struct DescribeCloudStorageStreamDataRequest: TCRequestModel {
        /// 产品ID
        public let productId: String
        
        /// 设备名称
        public let deviceName: String
        
        /// 图片流事件开始时间
        public let startTime: UInt64
        
        public init (productId: String, deviceName: String, startTime: UInt64) {
            self.productId = productId
            self.deviceName = deviceName
            self.startTime = startTime
        }
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case startTime = "StartTime"
        }
    }
    
    /// DescribeCloudStorageStreamData返回参数结构体
    public struct DescribeCloudStorageStreamDataResponse: TCResponseModel {
        /// 图片流视频地址
        public let videoStream: String
        
        /// 图片流音频地址
        public let audioStream: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case videoStream = "VideoStream"
            case audioStream = "AudioStream"
            case requestId = "RequestId"
        }
    }
}