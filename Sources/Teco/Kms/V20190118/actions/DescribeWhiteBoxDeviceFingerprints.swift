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

extension Kms {
    /// 获取指定密钥的设备指纹列表
    ///
    /// 获取指定密钥的设备指纹列表
    @inlinable
    public func describeWhiteBoxDeviceFingerprints(_ input: DescribeWhiteBoxDeviceFingerprintsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeWhiteBoxDeviceFingerprintsResponse > {
        self.client.execute(action: "DescribeWhiteBoxDeviceFingerprints", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取指定密钥的设备指纹列表
    ///
    /// 获取指定密钥的设备指纹列表
    @inlinable
    public func describeWhiteBoxDeviceFingerprints(_ input: DescribeWhiteBoxDeviceFingerprintsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWhiteBoxDeviceFingerprintsResponse {
        try await self.client.execute(action: "DescribeWhiteBoxDeviceFingerprints", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeWhiteBoxDeviceFingerprints请求参数结构体
    public struct DescribeWhiteBoxDeviceFingerprintsRequest: TCRequestModel {
        /// 白盒密钥ID
        public let keyId: String
        
        public init (keyId: String) {
            self.keyId = keyId
        }
        
        enum CodingKeys: String, CodingKey {
            case keyId = "KeyId"
        }
    }
    
    /// DescribeWhiteBoxDeviceFingerprints返回参数结构体
    public struct DescribeWhiteBoxDeviceFingerprintsResponse: TCResponseModel {
        /// 设备指纹列表
        public let deviceFingerprints: [DeviceFingerprint]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case deviceFingerprints = "DeviceFingerprints"
            case requestId = "RequestId"
        }
    }
}