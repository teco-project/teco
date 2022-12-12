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
    /// StopInstances请求参数结构体
    public struct StopInstancesRequest: TCRequestModel {
        /// 一个或多个待操作的实例ID。可通过[`DescribeInstances`](https://cloud.tencent.com/document/api/213/15728)接口返回值中的`InstanceId`获取。每次请求批量实例的上限为100。
        public let instanceIds: [String]
        
        /// 本参数已弃用，推荐使用StopType，不可以与参数StopType同时使用。表示是否在正常关闭失败后选择强制关闭实例。取值范围：<br><li>TRUE：表示在正常关闭失败后进行强制关闭<br><li>FALSE：表示在正常关闭失败后不进行强制关闭<br><br>默认取值：FALSE。
        public let forceStop: Bool?
        
        /// 实例的关闭模式。取值范围：<br><li>SOFT_FIRST：表示在正常关闭失败后进行强制关闭<br><li>HARD：直接强制关闭<br><li>SOFT：仅软关机<br>默认取值：SOFT。
        public let stopType: String?
        
        /// 按量计费实例关机收费模式。
        /// 取值范围：<br><li>KEEP_CHARGING：关机继续收费<br><li>STOP_CHARGING：关机停止收费<br>默认取值：KEEP_CHARGING。
        /// 该参数只针对部分按量计费云硬盘实例生效，详情参考[按量计费实例关机不收费说明](https://cloud.tencent.com/document/product/213/19918)
        public let stoppedMode: String?
        
        public init (instanceIds: [String], forceStop: Bool? = nil, stopType: String? = nil, stoppedMode: String? = nil) {
            self.instanceIds = instanceIds
            self.forceStop = forceStop
            self.stopType = stopType
            self.stoppedMode = stoppedMode
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case forceStop = "ForceStop"
            case stopType = "StopType"
            case stoppedMode = "StoppedMode"
        }
    }
    
    /// StopInstances返回参数结构体
    public struct StopInstancesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 关闭实例
    ///
    /// 本接口 (StopInstances) 用于关闭一个或多个实例。
    /// * 只有状态为`RUNNING`的实例才可以进行此操作。
    /// * 接口调用成功时，实例会进入`STOPPING`状态；关闭实例成功时，实例会进入`STOPPED`状态。
    /// * 支持强制关闭。强制关机的效果等同于关闭物理计算机的电源开关。强制关机可能会导致数据丢失或文件系统损坏，请仅在服务器不能正常关机时使用。
    /// * 支持批量操作。每次请求批量实例的上限为100。
    /// * 本接口为异步接口，关闭实例请求发送成功后会返回一个RequestId，此时操作并未立即完成。实例操作结果可以通过调用 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728#.E7.A4.BA.E4.BE.8B3-.E6.9F.A5.E8.AF.A2.E5.AE.9E.E4.BE.8B.E7.9A.84.E6.9C.80.E6.96.B0.E6.93.8D.E4.BD.9C.E6.83.85.E5.86.B5) 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表关闭实例操作成功。
    @inlinable
    public func stopInstances(_ input: StopInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < StopInstancesResponse > {
        self.client.execute(action: "StopInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 关闭实例
    ///
    /// 本接口 (StopInstances) 用于关闭一个或多个实例。
    /// * 只有状态为`RUNNING`的实例才可以进行此操作。
    /// * 接口调用成功时，实例会进入`STOPPING`状态；关闭实例成功时，实例会进入`STOPPED`状态。
    /// * 支持强制关闭。强制关机的效果等同于关闭物理计算机的电源开关。强制关机可能会导致数据丢失或文件系统损坏，请仅在服务器不能正常关机时使用。
    /// * 支持批量操作。每次请求批量实例的上限为100。
    /// * 本接口为异步接口，关闭实例请求发送成功后会返回一个RequestId，此时操作并未立即完成。实例操作结果可以通过调用 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728#.E7.A4.BA.E4.BE.8B3-.E6.9F.A5.E8.AF.A2.E5.AE.9E.E4.BE.8B.E7.9A.84.E6.9C.80.E6.96.B0.E6.93.8D.E4.BD.9C.E6.83.85.E5.86.B5) 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表关闭实例操作成功。
    @inlinable
    public func stopInstances(_ input: StopInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopInstancesResponse {
        try await self.client.execute(action: "StopInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
