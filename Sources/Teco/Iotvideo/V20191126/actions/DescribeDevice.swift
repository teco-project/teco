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

extension Iotvideo {
    /// 获取设备信息
    ///
    /// 本接口（DescribeDevice）获取设备信息。
    @inlinable
    public func describeDevice(_ input: DescribeDeviceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDeviceResponse > {
        self.client.execute(action: "DescribeDevice", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取设备信息
    ///
    /// 本接口（DescribeDevice）获取设备信息。
    @inlinable
    public func describeDevice(_ input: DescribeDeviceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceResponse {
        try await self.client.execute(action: "DescribeDevice", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDevice请求参数结构体
    public struct DescribeDeviceRequest: TCRequestModel {
        /// 设备TID
        public let tid: String
        
        public init (tid: String) {
            self.tid = tid
        }
        
        enum CodingKeys: String, CodingKey {
            case tid = "Tid"
        }
    }
    
    /// DescribeDevice返回参数结构体
    public struct DescribeDeviceResponse: TCResponseModel {
        /// 设备信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: DeviceData
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}
