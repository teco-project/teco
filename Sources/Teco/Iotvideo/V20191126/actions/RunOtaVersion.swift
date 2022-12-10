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
    /// 固件版本正式发布
    ///
    /// 本接口（RunOtaVersion）用于固件版本正式发布。
    @inlinable
    public func runOtaVersion(_ input: RunOtaVersionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RunOtaVersionResponse > {
        self.client.execute(action: "RunOtaVersion", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 固件版本正式发布
    ///
    /// 本接口（RunOtaVersion）用于固件版本正式发布。
    @inlinable
    public func runOtaVersion(_ input: RunOtaVersionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RunOtaVersionResponse {
        try await self.client.execute(action: "RunOtaVersion", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// RunOtaVersion请求参数结构体
    public struct RunOtaVersionRequest: TCRequestModel {
        /// 产品ID
        public let productId: String
        
        /// 固件版本号，格式为x.y.z， x，y 范围0-63，z范围1~524288
        public let otaVersion: String
        
        /// 灰度值,取值范围0-100，为0时相当于暂停发布
        public let grayValue: UInt64
        
        /// 指定的旧版本
        public let oldVersions: [String]?
        
        /// 操作人
        public let `operator`: String?
        
        /// 备注信息
        public let remark: String?
        
        /// 版本发布的描述信息，需要国际化，可以为空
        public let contents: Contents
        
        public init (productId: String, otaVersion: String, grayValue: UInt64, oldVersions: [String]?, `operator`: String?, remark: String?, contents: Contents) {
            self.productId = productId
            self.otaVersion = otaVersion
            self.grayValue = grayValue
            self.oldVersions = oldVersions
            self.`operator` = `operator`
            self.remark = remark
            self.contents = contents
        }
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case otaVersion = "OtaVersion"
            case grayValue = "GrayValue"
            case oldVersions = "OldVersions"
            case `operator` = "Operator"
            case remark = "Remark"
            case contents = "Contents"
        }
    }
    
    /// RunOtaVersion返回参数结构体
    public struct RunOtaVersionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}